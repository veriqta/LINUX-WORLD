#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [APPROVED_PATH]

Reviews accounts, shells, UID 0 identities, and empty password fields.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

printf 'UID 0 accounts:\n';getent passwd|awk -F: '$3==0{print $1}';printf '\nInteractive accounts:\n';getent passwd|awk -F: '$7!~/(nologin|false)$/ {print $1,$3,$7}';printf '\nEmpty password fields:\n';if [[ -r /etc/shadow ]];then awk -F: '$2==""{print $1}' /etc/shadow;else echo 'UNKNOWN: /etc/shadow not readable';fi
