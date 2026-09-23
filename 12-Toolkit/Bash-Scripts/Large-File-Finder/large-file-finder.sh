#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM PATH [MIN_MB]

Finds large files beneath an explicitly selected path without modifying them.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

root="${1:-}"; min_mb="${2:-100}"
[[ -n "$root" && -d "$root" ]] || { echo "Usage: $PROGRAM PATH [MIN_MB]" >&2; exit 64; }
[[ "$min_mb" =~ ^[0-9]+$ ]] || { echo 'MIN_MB must be an integer' >&2; exit 64; }
find "$root" -xdev -type f -size +"${min_mb}"M -printf '%s\t%p\n' 2>/dev/null | sort -nr
