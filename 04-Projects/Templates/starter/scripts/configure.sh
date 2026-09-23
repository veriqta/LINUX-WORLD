#!/usr/bin/env bash
set -Eeuo pipefail
source "$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)/common.sh"

require_root
load_config
log INFO "Preparing configuration for ${PROJECT_NAME}."

# TODO: validate source configuration, render to a temporary file, run native
# syntax validation, install atomically, reload safely, and verify effective state.
die "Starter only: implement and test configuration before publication." 2
