#!/usr/bin/env bash
set -u
umask 077
ROOT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd); CONFIG="$ROOT_DIR/config/environment.conf"; [ -f "$CONFIG" ] || CONFIG="$ROOT_DIR/config/environment.example"; . "$CONFIG"
resolve(){ case "$1" in /*) printf '%s\n' "$1";; *) printf '%s/%s\n' "$ROOT_DIR" "$1";; esac; }
analyze(){ input=$(resolve "$INPUT_FILE"); [ -r "$input" ] || exit 66; [[ "$TOP_COUNT" =~ ^[1-9][0-9]*$ ]] || exit 64; mkdir -p "$OUTPUT_DIR"; chmod 700 "$OUTPUT_DIR"; out="$OUTPUT_DIR/summary.txt"; { printf 'total_lines='; wc -l <"$input"; printf '\nlevels\n'; awk '{for(i=1;i<=NF;i++) if($i ~ /^(INFO|WARN|ERROR|DEBUG)$/) count[$i]++} END{for(k in count) print k,count[k]}' "$input" | sort; printf '\nhttp_status\n'; awk '{for(i=1;i<=NF;i++) if($i ~ /^[1-5][0-9][0-9]$/) count[$i]++} END{for(k in count) print k,count[k]}' "$input" | sort -nr; } >"$out"; chmod 600 "$out"; printf '%s\n' "$out"; }
verify(){ [ -s "$OUTPUT_DIR/summary.txt" ]; grep -q total_lines "$OUTPUT_DIR/summary.txt"; printf 'PASS: report verified\n'; }
case "${1:-run}" in install|configure) mkdir -p "$OUTPUT_DIR"; chmod 700 "$OUTPUT_DIR";; run) analyze;; verify|test) verify;; cleanup) rm -rf -- "$OUTPUT_DIR";; *) exit 64;; esac

