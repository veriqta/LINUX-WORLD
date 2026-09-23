#!/usr/bin/env bash
set -u
R=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
if bash "$R/solutions/complete-solution.sh" apply; then exit 1; fi
bash "$R/solutions/complete-solution.sh" run
bash "$R/solutions/complete-solution.sh" verify
printf 'PASS: unsafe update refused\n'
