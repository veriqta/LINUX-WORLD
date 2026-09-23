#!/usr/bin/env bash
set -u
command -v sshd >/dev/null
tmp=$(mktemp)
trap 'rm -f "$tmp"' EXIT
printf 'ThisDirectiveDoesNotExist yes\n' >"$tmp"
if sshd -t -f "$tmp" >/dev/null 2>&1; then exit 1; fi
sshd -t
printf 'PASS: invalid SSH configuration rejected\n'
