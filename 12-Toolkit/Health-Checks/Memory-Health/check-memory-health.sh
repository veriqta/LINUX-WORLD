#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [TARGET] [THRESHOLD]

Evaluates available memory percentage.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

warn=20; crit=10; read -r total available < <(awk '/MemTotal/{t=$2}/MemAvailable/{a=$2}END{print t,a}' /proc/meminfo); pct=$((available*100/total)); code=0; ((pct<=warn))&&code=1; ((pct<=crit))&&code=2; printf 'MEMORY available=%s%% available_kb=%s\n' "$pct" "$available"; exit "$code"
