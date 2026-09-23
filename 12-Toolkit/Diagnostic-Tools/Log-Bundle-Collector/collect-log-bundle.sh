#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [TARGET]

Creates a bounded, restricted journal archive for an approved time range.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

output="${1:-./log-bundle.txt}"; umask 077; journalctl --since '-1 hour' --utc --no-pager -n 5000 >"$output"; chmod 600 "$output"; echo "Wrote $output"
