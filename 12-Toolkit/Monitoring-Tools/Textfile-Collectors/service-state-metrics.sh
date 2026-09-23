#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [TARGET]

Linux World service state metrics monitoring utility.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

unit="${1:-}"; [[ -n "$unit" ]]||{ echo "Usage: $PROGRAM UNIT" >&2;exit 64;}; systemctl is-active --quiet "$unit"&&v=1||v=0; printf 'linux_world_systemd_unit_active{unit="%s"} %s\n' "$unit" "$v"
