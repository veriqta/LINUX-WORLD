#!/usr/bin/env bash
set -u
umask 077
R=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd); C="$R/config/environment.conf"; [ -f "$C" ]||C="$R/config/environment.example"; . "$C"
setup(){ [[ "$DURATION_SECONDS" =~ ^[1-9][0-9]*$ ]]||exit 64; mkdir -p "$OUTPUT_DIR"; chmod 700 "$OUTPUT_DIR"; }
run(){ setup; { date --iso-8601=seconds; uptime; free -h; df -hT; vmstat "$SAMPLE_INTERVAL" "$DURATION_SECONDS"; } >"$OUTPUT_DIR/baseline.txt"; /usr/bin/time -v sh -c 'i=0; while [ "$i" -lt 10000 ]; do i=$((i+1)); :; done' 2>"$OUTPUT_DIR/workload-time.txt"; chmod 600 "$OUTPUT_DIR"/*; }
verify(){ [ -s "$OUTPUT_DIR/baseline.txt" ]; [ -s "$OUTPUT_DIR/workload-time.txt" ]; grep -q 'Elapsed' "$OUTPUT_DIR/workload-time.txt"; printf 'PASS: baseline and workload evidence exist\n'; }
fail(){ old="$DURATION_SECONDS"; DURATION_SECONDS=bad; if setup 2>/dev/null; then DURATION_SECONDS="$old"; exit 1; fi; DURATION_SECONDS="$old"; run; verify; }
cleanup(){ rm -rf -- "$OUTPUT_DIR"; }
case "${1:-verify}" in install|configure) setup;; run) run;; verify|test) verify;; fail) fail;; cleanup) cleanup;; *) exit 64;; esac
