#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [TARGET]

Collects block, mount, capacity, inode, and kernel storage evidence.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

lsblk -o NAME,TYPE,SIZE,FSTYPE,MOUNTPOINTS,RO; findmnt; df -hT; df -hi; cat /proc/pressure/io 2>/dev/null||true; journalctl -k -p warning --since '-24 hours' --no-pager 2>/dev/null | tail -200
