#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [TARGET]

Collects load, pressure, interrupts, and CPU consumers.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

uptime; cat /proc/pressure/cpu 2>/dev/null||true; ps -eo pid,ppid,user,state,psr,%cpu,%mem,comm --sort=-%cpu | head -25; command -v mpstat >/dev/null&&mpstat -P ALL 1 3||true
