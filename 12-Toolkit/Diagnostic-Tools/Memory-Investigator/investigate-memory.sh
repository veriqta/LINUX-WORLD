#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [TARGET]

Collects memory, swap, pressure, and process evidence.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

free -h; cat /proc/pressure/memory 2>/dev/null||true; vmstat 1 3; ps -eo pid,ppid,user,state,rss,vsz,%mem,comm --sort=-rss | head -25; journalctl -k -g 'oom|Out of memory' --since '-24 hours' --no-pager 2>/dev/null||true
