#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [TARGET] [THRESHOLD]

Evaluates block usage for a selected mount point.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

mount="${1:-/}"; [[ -d "$mount" ]] || { echo 'UNKNOWN: mount path missing'; exit 3; }; used=$(df -P "$mount"|awk 'NR==2{gsub(/%/,"",$5);print $5}'); code=0; ((used>=80))&&code=1; ((used>=90))&&code=2; printf 'FILESYSTEM path=%s used=%s%%\n' "$mount" "$used"; exit "$code"
