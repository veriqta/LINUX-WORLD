#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [TARGET] [THRESHOLD]

Checks resolver success for a supplied name.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

name="${1:-}"; [[ -n "$name" ]] || { echo "Usage: $PROGRAM NAME" >&2; exit 64; }; answer=$(getent ahosts "$name" 2>/dev/null | head -1 || true); [[ -n "$answer" ]] && { echo "OK: $answer"; exit 0; }; echo "CRITICAL: no address for $name"; exit 2
