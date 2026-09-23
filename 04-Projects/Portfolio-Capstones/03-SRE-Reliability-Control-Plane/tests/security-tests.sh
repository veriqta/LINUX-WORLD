#!/usr/bin/env bash
set -u
R=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
if command -v rg >/dev/null && rg -n '(BEGIN .* PRIVATE KEY|password[[:space:]]*=|token[[:space:]]*=)' "$R" --glob '!tests/security-tests.sh'; then exit 1; fi
bash "$R/solutions/complete-solution.sh" security

