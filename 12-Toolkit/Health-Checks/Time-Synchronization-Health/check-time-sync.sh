#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [TARGET] [THRESHOLD]

Reports systemd time synchronization state.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

command -v timedatectl >/dev/null || { echo 'UNKNOWN: timedatectl unavailable'; exit 3; }; state=$(timedatectl show -p NTPSynchronized --value 2>/dev/null || true); [[ "$state" == yes ]] && { echo 'OK: clock synchronized'; exit 0; }; echo "WARNING: NTPSynchronized=$state"; exit 1
