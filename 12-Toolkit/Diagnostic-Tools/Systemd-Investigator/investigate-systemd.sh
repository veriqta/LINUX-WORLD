#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [TARGET]

Collects unit status, properties, dependencies, and recent logs.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

unit="${1:-}"; [[ -n "$unit" ]]||{ echo "Usage: $PROGRAM UNIT" >&2;exit 64;}; systemctl status "$unit" --no-pager -l||true; systemctl show "$unit" --no-pager; systemctl list-dependencies "$unit" --no-pager; journalctl -u "$unit" --since '-1 hour' --utc --no-pager -n 500
