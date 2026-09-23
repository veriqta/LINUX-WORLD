#!/usr/bin/env bash
set -Eeuo pipefail
here="$(cd "$(dirname "$0")/.."&&pwd)"
"$here/install.sh" --prefix "${XDG_DATA_HOME:-$HOME/.local/share}/linux-world-toolkit"
