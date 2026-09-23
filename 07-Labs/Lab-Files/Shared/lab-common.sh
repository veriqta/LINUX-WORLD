#!/usr/bin/env bash
set -Eeuo pipefail

lab_die() { printf 'ERROR: %s\n' "$*" >&2; exit 1; }
lab_note() { printf 'LAB: %s\n' "$*"; }
lab_require_command() { command -v "$1" >/dev/null 2>&1 || lab_die "required command not found: $1"; }
lab_require_nonproduction_name() {
  local name; name="$(hostname 2>/dev/null || true)"
  [[ "$name" == *lab* || "$name" == *test* || "$name" == *sandbox* ]] ||
    lab_die "hostname does not identify a lab, test or sandbox system: $name"
}
