#!/usr/bin/env bash
set -Eeuo pipefail
source "$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)/common.sh"

require_root
load_config
log INFO "Validating installation target for ${PROJECT_NAME}."
[[ ! -e "${PROJECT_ROOT}" ]] || die "Target exists: ${PROJECT_ROOT}. Refusing to overwrite it."

# TODO: detect a supported distribution, install documented packages, create a
# service identity, and create paths with explicit ownership and modes.
die "Starter only: implement and test installation before publication." 2
