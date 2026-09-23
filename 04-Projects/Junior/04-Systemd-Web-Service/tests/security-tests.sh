#!/usr/bin/env bash
set -u
ROOT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
if command -v rg >/dev/null && rg -n --hidden '(BEGIN (RSA|OPENSSH|EC) PRIVATE KEY|password[[:space:]]*=|token[[:space:]]*=)' "$ROOT_DIR" --glob '!tests/security-tests.sh'; then
  printf 'FAIL: possible secret pattern\n' >&2; exit 1
fi
printf 'PASS: no obvious embedded secret pattern\n'

