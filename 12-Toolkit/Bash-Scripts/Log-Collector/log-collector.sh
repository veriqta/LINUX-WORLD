#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [ARGUMENTS]

Collects bounded, redacted journal evidence into a restricted archive.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

unit="${1:-}"; output="${2:-./journal-bundle.txt}"
[[ -n "$unit" ]] || { echo "Usage: $PROGRAM UNIT [OUTPUT]" >&2; exit 64; }
umask 077
journalctl -u "$unit" --since '-1 hour' --utc --no-pager -n 2000 > "$output"
printf 'Wrote %s\n' "$output"
