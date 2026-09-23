#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [ARGUMENTS]

Collects operating system, kernel, CPU, memory, storage, network, and service facts.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

printf 'timestamp=%s\n' "$(date -u +%Y-%m-%dT%H:%M:%SZ)"
printf 'hostname=%s\n' "$(hostname -f 2>/dev/null || hostname)"
printf 'kernel=%s\n' "$(uname -srmo)"
printf 'cpus=%s\n' "$(getconf _NPROCESSORS_ONLN 2>/dev/null || printf unknown)"
awk '/MemTotal|MemAvailable/ {print tolower($1) "=" $2 " kB"}' /proc/meminfo 2>/dev/null || true
df -PT 2>/dev/null || true
ip -brief address 2>/dev/null || true
