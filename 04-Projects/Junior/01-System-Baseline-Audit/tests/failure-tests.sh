#!/usr/bin/env bash
set -u
R=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
bash "$R/solutions/complete-solution.sh" cleanup
if bash "$R/solutions/complete-solution.sh" verify; then exit 1; fi
bash "$R/solutions/complete-solution.sh" run >/dev/null
bash "$R/solutions/complete-solution.sh" verify
printf 'PASS: missing-report failure and recovery\n'
