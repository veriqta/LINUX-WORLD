#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [TARGET]

Collects state, limits, descriptors, and command details for one PID.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

pid="${1:-}"; [[ "$pid" =~ ^[0-9]+$ && -d "/proc/$pid" ]] || { echo "Usage: $PROGRAM PID" >&2; exit 64; }; ps -p "$pid" -o pid,ppid,user,group,state,lstart,etime,%cpu,%mem,cmd; printf '\nLimits\n'; cat "/proc/$pid/limits"; printf '\nDescriptors\n'; ls -l "/proc/$pid/fd" 2>&1 | head -200
