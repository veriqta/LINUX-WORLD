#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [TARGET]

Linux World check disk monitoring utility.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

mount="${1:-/}";used=$(df -P "$mount"|awk 'NR==2{gsub(/%/,"",$5);print $5}');code=0;((used>=80))&&code=1;((used>=90))&&code=2;echo "DISK $([ $code -eq 0 ]&&echo OK||echo ALERT) - used=$used% | used=$used%;80;90;0;100";exit $code
