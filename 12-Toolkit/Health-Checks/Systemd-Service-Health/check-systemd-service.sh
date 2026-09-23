#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [TARGET] [THRESHOLD]

Checks whether a named systemd unit is active.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

unit="${1:-}"; [[ -n "$unit" ]] || { echo "Usage: $PROGRAM UNIT" >&2; exit 64; }
command -v systemctl >/dev/null || { echo 'UNKNOWN: systemctl unavailable'; exit 3; }
if systemctl is-active --quiet "$unit"; then echo "OK: $unit is active"; exit 0; else state=$(systemctl is-active "$unit" 2>/dev/null || true); echo "CRITICAL: $unit is $state"; exit 2; fi
