#!/usr/bin/env bash
set -u
umask 077
ROOT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
CONFIG="$ROOT_DIR/config/environment.conf"; [ -f "$CONFIG" ] || CONFIG="$ROOT_DIR/config/environment.example"; . "$CONFIG"
have(){ command -v "$1" >/dev/null 2>&1; }
section(){ printf '\n===== %s =====\n' "$1"; }
collect(){ mkdir -p -- "$OUTPUT_DIR"; chmod 700 "$OUTPUT_DIR"; report="$OUTPUT_DIR/baseline-$(date +%Y%m%dT%H%M%S).txt"; { section identity; date --iso-8601=seconds; hostname; id; section "operating system"; [ -r /etc/os-release ] && cat /etc/os-release; uname -a; section cpu; have lscpu && lscpu || cat /proc/cpuinfo; section memory; have free && free -h || cat /proc/meminfo; section "block devices"; have lsblk && lsblk -o NAME,TYPE,FSTYPE,SIZE,MOUNTPOINTS,UUID; section filesystems; df -hT; section inodes; df -ih; section mounts; have findmnt && findmnt; section "network addresses"; if have ip; then if [ "$REDACT_NETWORK" = true ]; then ip -br addr | sed -E 's#([0-9]{1,3}\.){3}[0-9]{1,3}(/[0-9]+)?#[REDACTED-IP]#g'; else ip -br addr; fi; fi; section routes; have ip && ip route; section "listening sockets"; have ss && ss -lntup; section "failed services"; have systemctl && systemctl --failed --no-pager || true; section users; getent passwd; section groups; getent group; section packages; if have dpkg-query; then dpkg-query -W; elif have rpm; then rpm -qa; fi; section security; have getenforce && getenforce; have aa-status && aa-status || true; section warnings; have journalctl && journalctl -b -p warning..alert -n 50 --no-pager || true; section limits; ulimit -a; } >"$report"; chmod 600 "$report"; printf '%s\n' "$report"; }
verify(){ latest=$(find "$OUTPUT_DIR" -maxdepth 1 -type f -name 'baseline-*.txt' -print 2>/dev/null | sort | tail -n1); [ -n "$latest" ] || { printf 'FAIL: no report\n' >&2; return 1; }; [ "$(stat -c %a "$latest")" = 600 ]; grep -q '===== operating system =====' "$latest"; grep -q '===== filesystems =====' "$latest"; printf 'PASS: %s\n' "$latest"; }
case "${1:-run}" in install|configure) mkdir -p -- "$OUTPUT_DIR"; chmod 700 "$OUTPUT_DIR";; run) collect;; verify|test) verify;; cleanup) rm -rf -- "$OUTPUT_DIR";; *) exit 64;; esac

