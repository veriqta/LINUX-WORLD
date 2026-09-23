#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [ARGUMENTS]

Checks a local PEM certificate expiry date.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

cert="${1:-}"
[[ -f "$cert" ]] || { echo "Usage: $PROGRAM CERT.pem" >&2; exit 64; }
command -v openssl >/dev/null || { echo 'UNKNOWN: openssl missing' >&2; exit 69; }
openssl x509 -in "$cert" -noout -subject -issuer -dates -fingerprint -sha256
