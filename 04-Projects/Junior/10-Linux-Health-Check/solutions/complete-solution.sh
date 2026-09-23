#!/usr/bin/env bash
set -u
umask 077
ROOT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd); CONFIG="$ROOT_DIR/config/environment.conf"; [ -f "$CONFIG" ] || CONFIG="$ROOT_DIR/config/environment.example"; . "$CONFIG"
number(){ [[ "$1" =~ ^[0-9]+([.][0-9]+)?$ ]]; }
run(){ number "$WARN_DISK" && number "$CRIT_DISK" || exit 64; [ -d "$CHECK_PATH" ] || exit 66; mkdir -p "$OUTPUT_DIR"; chmod 700 "$OUTPUT_DIR"; code=0; disk=$(df -P "$CHECK_PATH"|awk 'NR==2{gsub("%","",$5);print $5}'); inode=$(df -Pi "$CHECK_PATH"|awk 'NR==2{gsub("%","",$5);print $5}'); load=$(awk '{print $1}' /proc/loadavg); cpus=$(getconf _NPROCESSORS_ONLN); per=$(awk -v l="$load" -v c="$cpus" 'BEGIN{printf "%.2f",l/c}'); if [ "$disk" -ge "$CRIT_DISK" ] || [ "$inode" -ge "$CRIT_INODE" ]; then code=2; elif [ "$disk" -ge "$WARN_DISK" ] || [ "$inode" -ge "$WARN_INODE" ]; then code=1; fi; status=OK; [ "$code" -eq 1 ] && status=WARNING; [ "$code" -eq 2 ] && status=CRITICAL; { printf 'status=%s\ndisk_percent=%s\ninode_percent=%s\nload_per_cpu=%s\n' "$status" "$disk" "$inode" "$per"; free -h; ss -s 2>/dev/null || true; } >"$OUTPUT_DIR/health.txt"; chmod 600 "$OUTPUT_DIR/health.txt"; cat "$OUTPUT_DIR/health.txt"; return "$code"; }
verify(){ [ -s "$OUTPUT_DIR/health.txt" ]; grep -Eq '^status=(OK|WARNING|CRITICAL)$' "$OUTPUT_DIR/health.txt"; printf 'PASS: health output verified\n'; }
case "${1:-run}" in install|configure) mkdir -p "$OUTPUT_DIR"; chmod 700 "$OUTPUT_DIR";; run) run;; verify|test) verify;; cleanup) rm -rf -- "$OUTPUT_DIR";; *) exit 64;; esac

