#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [ARGUMENTS]

Reports local accounts, groups, login shells, and privileged group membership.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

printf 'USER\tUID\tGID\tHOME\tSHELL\n'
getent passwd | awk -F: '{print $1"\t"$3"\t"$4"\t"$6"\t"$7}'
printf '\nUID 0 accounts:\n'
getent passwd | awk -F: '$3==0 {print $1}'
