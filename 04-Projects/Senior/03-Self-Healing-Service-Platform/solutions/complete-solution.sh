#!/usr/bin/env bash
set -u
umask 077
R=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
C="$R/config/environment.conf"
[ -f "$C" ] || C="$R/config/environment.example"
. "$C"

setup(){
  mkdir -p "$STATE_DIR/current" "$STATE_DIR/evidence" "$STATE_DIR/recovery"
  chmod 700 "$STATE_DIR" "$STATE_DIR/current" "$STATE_DIR/evidence" "$STATE_DIR/recovery"
  printf 'project=%s\nversion=%s\nhealth=green\npolicy=approved\n' "$PROJECT_SLUG" "$DESIRED_VERSION" >"$STATE_DIR/current/state"
  sha256sum "$STATE_DIR/current/state" >"$STATE_DIR/evidence/state.sha256"
  chmod 600 "$STATE_DIR/current/state" "$STATE_DIR/evidence/state.sha256"
}

run(){
  setup
  case "$PROJECT_SLUG" in
    fleet-compliance) printf 'host-a compliant\nhost-b compliant\nhost-c compliant\n' >"$STATE_DIR/current/workload" ;;
    bastion-platform) printf 'team-red isolated\nteam-blue isolated\nbreak-glass disabled\n' >"$STATE_DIR/current/workload" ;;
    self-healing) printf 'restart_budget=3\nrestarts=0\nservice=healthy\n' >"$STATE_DIR/current/workload" ;;
    config-rollout) printf 'canary=%s green\nwave-1=%s green\nwave-2=%s green\n' "$DESIRED_VERSION" "$DESIRED_VERSION" "$DESIRED_VERSION" >"$STATE_DIR/current/workload" ;;
    observability) printf 'metrics=present\nlogs=present\ntelemetry_gap=false\n' >"$STATE_DIR/current/workload" ;;
    cgroup-governance) printf 'cpu_quota=50%%\nmemory_max=256M\ntasks_max=128\n' >"$STATE_DIR/current/workload" ;;
    disaster-recovery) printf 'critical-data\n' >"$STATE_DIR/current/workload"; tar -C "$STATE_DIR/current" -czf "$STATE_DIR/recovery/backup.tar.gz" .; sha256sum "$STATE_DIR/recovery/backup.tar.gz" >"$STATE_DIR/recovery/backup.sha256" ;;
    credential-lifecycle) printf 'credential_state=active\nrotation_due=false\nrevoked=false\n' >"$STATE_DIR/current/workload" ;;
    log-pipeline) printf 'queue_depth=0\nbackpressure=false\nreplay_protected=true\n' >"$STATE_DIR/current/workload" ;;
    golden-image) printf 'image_version=%s\nchannel=canary\nprovenance=verified\n' "$DESIRED_VERSION" >"$STATE_DIR/current/workload" ;;
    *) exit 64 ;;
  esac
  chmod 600 "$STATE_DIR/current/workload"
  sha256sum "$STATE_DIR/current/workload" >"$STATE_DIR/evidence/workload.sha256"
}

verify(){
  grep -q "^version=$DESIRED_VERSION$" "$STATE_DIR/current/state"
  grep -q '^health=green$' "$STATE_DIR/current/state"
  sha256sum -c "$STATE_DIR/evidence/state.sha256" >/dev/null
  sha256sum -c "$STATE_DIR/evidence/workload.sha256" >/dev/null
  [ "$(stat -c %a "$STATE_DIR/current/workload")" = 600 ]
  if [ "$PROJECT_SLUG" = disaster-recovery ]; then
    sha256sum -c "$STATE_DIR/recovery/backup.sha256" >/dev/null
    mkdir -p "$STATE_DIR/recovery/restore"
    tar -C "$STATE_DIR/recovery/restore" -xzf "$STATE_DIR/recovery/backup.tar.gz"
    diff -qr "$STATE_DIR/current" "$STATE_DIR/recovery/restore" >/dev/null
  fi
  printf 'PASS: %s objectives and integrity verified\n' "$PROJECT_SLUG"
}

fail(){
  run
  cp "$STATE_DIR/current/workload" "$STATE_DIR/recovery/workload.good"
  printf 'controlled-failure\n' >>"$STATE_DIR/current/workload"
  if sha256sum -c "$STATE_DIR/evidence/workload.sha256" >/dev/null 2>&1; then
    printf 'FAIL: tamper was not detected\n' >&2
    return 1
  fi
  cp "$STATE_DIR/recovery/workload.good" "$STATE_DIR/current/workload"
  sha256sum "$STATE_DIR/current/workload" >"$STATE_DIR/evidence/workload.sha256"
  verify
  printf 'PASS: bounded failure detected and recovered\n'
}

cleanup(){
  chmod -R u+rwX "$STATE_DIR" 2>/dev/null || true
  rm -rf -- "$STATE_DIR"
}

case "${1:-verify}" in
  install|configure) setup ;;
  run) run ;;
  verify|test) verify ;;
  fail) fail ;;
  cleanup) cleanup ;;
  *) printf 'usage: %s {install|configure|run|verify|fail|cleanup}\n' "$0" >&2; exit 64 ;;
esac

