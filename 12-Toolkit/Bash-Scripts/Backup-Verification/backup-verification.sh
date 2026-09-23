#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [ARGUMENTS]

Checks that a backup artifact exists, is recent, readable, and hashable.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

file="${1:-}"; max_hours="${2:-24}"
[[ -f "$file" ]] || { echo "CRITICAL: backup missing: $file" >&2; exit 2; }
now=$(date +%s); modified=$(stat -c %Y "$file"); age=$(( (now-modified)/3600 ))
sha256sum "$file"
printf 'age_hours=%s size_bytes=%s\n' "$age" "$(stat -c %s "$file")"
(( age <= max_hours )) || exit 1
