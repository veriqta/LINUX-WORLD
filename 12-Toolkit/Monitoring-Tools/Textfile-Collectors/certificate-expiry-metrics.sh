#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [TARGET]

Linux World certificate expiry metrics monitoring utility.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

cert="${1:-}"; [[ -f "$cert" ]]||{ echo "Usage: $PROGRAM CERT.pem" >&2;exit 64;}; end=$(date -d "$(openssl x509 -in "$cert" -noout -enddate|cut -d= -f2)" +%s); printf 'linux_world_certificate_expiry_timestamp_seconds %s\n' "$end"
