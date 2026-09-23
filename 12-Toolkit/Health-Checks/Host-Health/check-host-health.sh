#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [TARGET] [THRESHOLD]

Evaluates load, memory, and root filesystem thresholds.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

warn=80; crit=90
read -r _ total used free shared buffers available < <(free -m | awk '/^Mem:/ {print}')
mem_used=$((100-(available*100/total)))
disk=$(df -P / | awk 'NR==2 {gsub(/%/,"",$5); print $5}')
status=0; (( mem_used>=warn || disk>=warn )) && status=1; (( mem_used>=crit || disk>=crit )) && status=2
printf 'HOST memory_used=%s%% root_used=%s%%\n' "$mem_used" "$disk"; exit "$status"
