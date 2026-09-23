#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [APPROVED_PATH]

Finds risky writable paths and privileged files under an approved root.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

root="${1:-/etc}";[[ -d "$root" ]]||exit 64;find "$root" -xdev \( -type f -o -type d \) -perm -0002 -printf 'world_writable\t%m\t%u:%g\t%p\n' 2>/dev/null;find "$root" -xdev -type f -perm /6000 -printf 'privileged\t%m\t%u:%g\t%p\n' 2>/dev/null
