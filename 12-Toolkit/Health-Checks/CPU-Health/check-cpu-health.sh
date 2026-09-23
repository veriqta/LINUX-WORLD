#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [TARGET] [THRESHOLD]

Evaluates one-minute load relative to available CPUs.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

warn=1.0; crit=2.0; cpus=$(getconf _NPROCESSORS_ONLN); load=$(awk '{print $1}' /proc/loadavg); ratio=$(awk -v l="$load" -v c="$cpus" 'BEGIN{printf "%.2f",l/c}'); awk -v r="$ratio" -v c="$crit" 'BEGIN{exit !(r>=c)}' && code=2 || { awk -v r="$ratio" -v w="$warn" 'BEGIN{exit !(r>=w)}' && code=1 || code=0; }; printf 'CPU load1=%s cpus=%s ratio=%s\n' "$load" "$cpus" "$ratio"; exit "$code"
