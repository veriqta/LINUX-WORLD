#!/usr/bin/env bash
# Source this file from lab-specific read-only validators.
set -u
PASS=0; FAIL=0
pass() { PASS=$((PASS+1)); printf 'PASS: %s\n' "$*"; }
fail() { FAIL=$((FAIL+1)); printf 'FAIL: %s\n' "$*"; }
assert_command() { command -v "$1" >/dev/null 2>&1 && pass "command $1 exists" || fail "command $1 missing"; }
assert_file_mode() { local observed; observed="$(stat -c '%a' "$1" 2>/dev/null || true)"; [[ "$observed" == "$2" ]] && pass "$1 mode is $2" || fail "$1 mode expected $2, observed ${observed:-missing}"; }
summary() { printf 'SUMMARY: %s passed, %s failed\n' "$PASS" "$FAIL"; (( FAIL == 0 )); }
