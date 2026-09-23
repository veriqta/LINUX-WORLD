#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

readonly PROGRAM="${0##*/}"
readonly VERSION="1.0.0"

usage() {
  cat <<USAGE
Usage: $PROGRAM [APPROVED_PATH]

Reviews effective SSH daemon settings without changing them.

Options:
  -h, --help       Show this help.
  -V, --version    Show version.
USAGE
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  -V|--version) printf '%s %s\n' "$PROGRAM" "$VERSION"; exit 0 ;;
esac

command -v sshd>/dev/null||{ echo 'UNKNOWN: sshd missing';exit 3;};sshd -T 2>/dev/null|grep -E '^(permitrootlogin|passwordauthentication|pubkeyauthentication|authenticationmethods|maxauthtries|allowusers|allowgroups|x11forwarding|permituserenvironment) '
