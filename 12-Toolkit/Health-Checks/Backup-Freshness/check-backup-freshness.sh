#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [TARGET] [THRESHOLD]

Checks the age of a supplied backup artifact.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

file="${1:-}"; max="${2:-24}"; [[ -f "$file" && "$max" =~ ^[0-9]+$ ]] || { echo "Usage: $PROGRAM FILE [MAX_HOURS]" >&2; exit 64; }; age=$(( ($(date +%s)-$(stat -c %Y "$file"))/3600 )); ((age<=max)) && { echo "OK: age_hours=$age"; exit 0; }; echo "CRITICAL: age_hours=$age threshold=$max"; exit 2
