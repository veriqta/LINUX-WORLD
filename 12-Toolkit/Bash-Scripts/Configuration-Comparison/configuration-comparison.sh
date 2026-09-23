#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM LEFT RIGHT

Compares two configuration trees or files without changing either.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

left="${1:-}"; right="${2:-}"
[[ -e "$left" && -e "$right" ]] || { echo "Usage: $PROGRAM LEFT RIGHT" >&2; exit 64; }
diff -ruN -- "$left" "$right"
