#!/usr/bin/env bash
set -Eeuo pipefail

readonly SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
readonly PROJECT_DIR="$(cd -- "${SCRIPT_DIR}/.." && pwd -P)"
readonly CONFIG_FILE="${PROJECT_CONFIG:-${PROJECT_DIR}/config/environment.conf}"

log() { printf '%s [%s] %s\n' "$(date -u +'%Y-%m-%dT%H:%M:%SZ')" "$1" "$2" >&2; }
die() { log ERROR "$1"; exit "${2:-1}"; }
command_exists() { command -v "$1" >/dev/null 2>&1; }
require_command() { command_exists "$1" || die "Required command not found: $1"; }
require_root() { [[ ${EUID} -eq 0 ]] || die "Run with authorized root privileges."; }

load_config() {
  [[ -f "${CONFIG_FILE}" ]] || die "Configuration not found: ${CONFIG_FILE}. Copy environment.example first."
  # shellcheck disable=SC1090
  source "${CONFIG_FILE}"
  : "${PROJECT_NAME:?PROJECT_NAME is required}"
  : "${PROJECT_ROOT:?PROJECT_ROOT is required}"
  [[ "${PROJECT_ROOT}" == /opt/* ]] || die "PROJECT_ROOT must be an explicit path below /opt in this starter."
}

run() {
  if [[ "${DRY_RUN:-0}" == 1 ]]; then
    printf 'DRY-RUN:' >&2
    printf ' %q' "$@" >&2
    printf '\n' >&2
  else
    "$@"
  fi
}
