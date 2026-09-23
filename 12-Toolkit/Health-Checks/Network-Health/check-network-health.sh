#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [TARGET] [THRESHOLD]

Checks route selection and bounded TCP reachability.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

host="${1:-}"; port="${2:-}"; [[ -n "$host" && "$port" =~ ^[0-9]+$ ]] || { echo "Usage: $PROGRAM HOST PORT" >&2; exit 64; }; getent ahosts "$host" >/dev/null || { echo 'CRITICAL: resolution failed'; exit 2; }; timeout 5 bash -c "</dev/tcp/$host/$port" 2>/dev/null && { echo "OK: $host:$port reachable"; exit 0; }; echo "CRITICAL: $host:$port unreachable"; exit 2
