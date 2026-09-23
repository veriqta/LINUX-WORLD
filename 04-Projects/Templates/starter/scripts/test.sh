#!/usr/bin/env bash
set -Eeuo pipefail
readonly SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
readonly PROJECT_DIR="$(cd -- "${SCRIPT_DIR}/.." && pwd -P)"

for suite in functional-tests.sh security-tests.sh failure-tests.sh; do
  printf '\n== %s ==\n' "${suite}"
  "${PROJECT_DIR}/tests/${suite}"
done
