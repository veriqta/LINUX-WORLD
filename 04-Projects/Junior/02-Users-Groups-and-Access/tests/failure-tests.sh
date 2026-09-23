#!/usr/bin/env bash
set -u
command -v visudo >/dev/null
tmp=$(mktemp)
trap 'rm -f "$tmp"' EXIT
printf 'invalid sudoers syntax !!!\n' >"$tmp"
if visudo -cf "$tmp" >/dev/null 2>&1; then exit 1; fi
printf 'PASS: invalid sudo policy rejected\n'
