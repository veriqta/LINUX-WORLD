#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [TARGET]

Collects boot timing, failed units, and current-boot warnings.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

who -b; uptime; systemd-analyze 2>/dev/null||true; systemd-analyze blame 2>/dev/null|head -30||true; systemctl --failed --no-pager||true; journalctl -b -p warning --utc --no-pager -n 500
