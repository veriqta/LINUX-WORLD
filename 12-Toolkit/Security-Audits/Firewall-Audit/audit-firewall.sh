#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [APPROVED_PATH]

Reports detected host firewall state and rules.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

if command -v nft>/dev/null;then nft list ruleset;elif command -v firewall-cmd>/dev/null;then firewall-cmd --state;firewall-cmd --list-all;elif command -v ufw>/dev/null;then ufw status verbose;else echo 'UNKNOWN: supported firewall frontend not detected';exit 3;fi
