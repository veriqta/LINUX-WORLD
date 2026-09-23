#!/usr/bin/env bash
set -u
ROOT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
exec bash "$ROOT_DIR/solutions/complete-solution.sh" cleanup

