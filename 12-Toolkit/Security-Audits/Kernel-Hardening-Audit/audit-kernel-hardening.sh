#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [APPROVED_PATH]

Checks a documented set of kernel hardening parameters.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

for k in kernel.randomize_va_space fs.protected_hardlinks fs.protected_symlinks net.ipv4.conf.all.accept_redirects net.ipv4.conf.all.send_redirects;do printf '%s=' "$k";sysctl -n "$k" 2>/dev/null||echo unavailable;done
