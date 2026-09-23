#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [TARGET]

Collects a read-only system evidence bundle.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

section(){ printf '\n## %s\n' "$1"; shift; "$@" 2>&1 || true; }; section Identity hostnamectl; section Uptime uptime; section Memory free -h; section Filesystems df -hT; section Inodes df -hi; section Routes ip route; section Sockets ss -s; section Failed systemctl --failed --no-pager
