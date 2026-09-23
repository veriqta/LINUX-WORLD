#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [APPROVED_PATH]

Reviews sudo configuration syntax and included policy files.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

command -v visudo>/dev/null||{ echo 'UNKNOWN: visudo missing';exit 3;};visudo -c;find /etc/sudoers.d -maxdepth 1 -type f -printf '%m\t%u:%g\t%p\n' 2>/dev/null||true
