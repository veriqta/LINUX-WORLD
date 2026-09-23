#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [ARGUMENTS]

Runs an explicitly supplied read-only maintenance check with logging and timeout.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

check="${1:-}"
[[ -n "$check" ]] || { echo "Usage: $PROGRAM 'READ_ONLY_COMMAND'" >&2; exit 64; }
[[ "$check" != *';'* && "$check" != *'|'* && "$check" != *'>'* ]] || { echo 'Refusing shell control operators' >&2; exit 64; }
printf 'started=%s command=%s\n' "$(date -u +%Y-%m-%dT%H:%M:%SZ)" "$check"
timeout 60 bash -c "$check"
