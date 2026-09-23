#!/usr/bin/env bash
set -Eeuo pipefail

[[ "${CONFIRM_FAILURE_LAB:-0}" == 1 ]] || {
  printf 'SKIP failure tests: set CONFIRM_FAILURE_LAB=1 only in the authorized disposable lab\n' >&2
  exit 2
}

# TODO: validate targets, capture a baseline, inject one bounded reversible
# fault, assert detection, recover, and prove end-to-end health.
printf 'SKIP failure tests: implement a bounded scenario before publication\n' >&2
exit 2
