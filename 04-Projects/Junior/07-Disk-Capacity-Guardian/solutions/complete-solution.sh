#!/usr/bin/env bash
set -u
umask 077
ROOT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd); CONFIG="$ROOT_DIR/config/environment.conf"; [ -f "$CONFIG" ] || CONFIG="$ROOT_DIR/config/environment.example"; . "$CONFIG"
validate(){ [ -d "$MONITOR_PATH" ] && [[ "$WARN_PERCENT" =~ ^[0-9]+$ ]] && [[ "$CRIT_PERCENT" =~ ^[0-9]+$ ]] && [ "$WARN_PERCENT" -lt "$CRIT_PERCENT" ] && [ "$CRIT_PERCENT" -le 100 ]; }
check(){ validate || exit 64; mkdir -p "$REPORT_DIR"; chmod 700 "$REPORT_DIR"; exec 9>"$REPORT_DIR/.lock"; flock -n 9 || exit 75; block=$(df -P "$MONITOR_PATH"|awk 'NR==2{gsub("%","",$5);print $5}'); inode=$(df -Pi "$MONITOR_PATH"|awk 'NR==2{gsub("%","",$5);print $5}'); status=OK; code=0; if [ "$block" -ge "$CRIT_PERCENT" ] || [ "$inode" -ge "$CRIT_PERCENT" ]; then status=CRITICAL; code=2; elif [ "$block" -ge "$WARN_PERCENT" ] || [ "$inode" -ge "$WARN_PERCENT" ]; then status=WARNING; code=1; fi; { printf 'status=%s\nblock_percent=%s\ninode_percent=%s\n' "$status" "$block" "$inode"; du -x -d1 "$MONITOR_PATH" 2>/dev/null | sort -nr | head; } >"$REPORT_DIR/status.txt"; chmod 600 "$REPORT_DIR/status.txt"; cat "$REPORT_DIR/status.txt"; return "$code"; }
verify(){ [ -s "$REPORT_DIR/status.txt" ]; grep -Eq '^status=(OK|WARNING|CRITICAL)$' "$REPORT_DIR/status.txt"; printf 'PASS: capacity report verified\n'; }
case "${1:-run}" in install|configure) mkdir -p "$REPORT_DIR"; chmod 700 "$REPORT_DIR";; run) check;; verify|test) verify;; cleanup) rm -rf -- "$REPORT_DIR";; *) exit 64;; esac

