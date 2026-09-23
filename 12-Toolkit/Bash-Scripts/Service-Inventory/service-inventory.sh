#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [ARGUMENTS]

Lists installed, enabled, running, and failed systemd services.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

command -v systemctl >/dev/null 2>&1 || { echo 'UNKNOWN: systemctl unavailable' >&2; exit 69; }
systemctl list-unit-files --type=service --no-pager
printf '\nFailed units:\n'
systemctl --failed --type=service --no-pager || true
