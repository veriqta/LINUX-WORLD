#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [TARGET]

Linux World backup age metrics monitoring utility.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

file="${1:-}"; [[ -f "$file" ]]||{ echo "Usage: $PROGRAM FILE" >&2;exit 64;}; age=$(($(date +%s)-$(stat -c %Y "$file"))); printf 'linux_world_backup_age_seconds %s\n' "$age"
