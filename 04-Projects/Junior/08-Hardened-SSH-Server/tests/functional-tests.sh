#!/usr/bin/env bash
set -u
ROOT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
bash "$ROOT_DIR/solutions/complete-solution.sh" run
bash "$ROOT_DIR/solutions/complete-solution.sh" verify
printf 'PASS: functional workflow\n'

