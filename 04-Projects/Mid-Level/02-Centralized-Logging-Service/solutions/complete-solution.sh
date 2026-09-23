#!/usr/bin/env bash
set -u
umask 077
R=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd); C="$R/config/environment.conf"; [ -f "$C" ]||C="$R/config/environment.example"; . "$C"
setup(){ mkdir -p "$SPOOL_DIR" "$COLLECTOR_DIR"; chmod 700 "$SPOOL_DIR" "$COLLECTOR_DIR"; }
run(){ setup; f="$SPOOL_DIR/events.ndjson"; printf '{"time":"%s","host":"client-a","level":"INFO","message":"startup"}\n' "$(date --iso-8601=seconds)" >>"$f"; awk 'NF{print}' "$f" >>"$COLLECTOR_DIR/events.ndjson"; : >"$f"; chmod 600 "$COLLECTOR_DIR/events.ndjson"; }
verify(){ [ -s "$COLLECTOR_DIR/events.ndjson" ]; grep -q '"host":"client-a"' "$COLLECTOR_DIR/events.ndjson"; printf 'PASS: event delivered to collector\n'; }
fail(){ old="$COLLECTOR_DIR"; bad=$(mktemp); COLLECTOR_DIR="$bad"; if run 2>/dev/null; then COLLECTOR_DIR="$old"; rm -f "$bad"; exit 1; fi; COLLECTOR_DIR="$old"; rm -f "$bad"; run; verify; }
cleanup(){ rm -rf -- "$SPOOL_DIR" "$COLLECTOR_DIR"; }
case "${1:-verify}" in install|configure) setup;; run) run;; verify|test) verify;; fail) fail;; cleanup) cleanup;; *) exit 64;; esac
