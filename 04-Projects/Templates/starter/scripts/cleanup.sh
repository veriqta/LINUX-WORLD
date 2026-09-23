#!/usr/bin/env bash
set -Eeuo pipefail
source "$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)/common.sh"

require_root
load_config
[[ "${CONFIRM_CLEANUP:-}" == "${PROJECT_NAME}" ]] || die "Set CONFIRM_CLEANUP=${PROJECT_NAME} after reviewing CLEANUP.md."
[[ "${PROJECT_ROOT}" == /opt/* && "${PROJECT_ROOT}" != /opt/ ]] || die "Unsafe cleanup target: ${PROJECT_ROOT}"

# TODO: stop triggers and services, remove only project-owned resources, verify
# targets, preserve approved evidence, and prove cleanup.
die "Starter only: implement and test bounded cleanup before publication." 2
