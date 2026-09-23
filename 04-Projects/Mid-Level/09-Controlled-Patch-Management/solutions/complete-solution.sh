#!/usr/bin/env bash
set -u
umask 077
R=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd); C="$R/config/environment.conf"; [ -f "$C" ]||C="$R/config/environment.example"; . "$C"
path(){ case "$1" in /*) printf '%s\n' "$1";; *) printf '%s/%s\n' "$R" "$1";; esac; }
run(){ fleet=$(path "$FLEET_FILE"); [ -r "$fleet" ]||exit 66; grep -qx "$CANARY" "$fleet"||exit 65; mkdir -p "$OUTPUT_DIR"; { printf 'canary=%s\napply=%s\n' "$CANARY" "$APPLY"; while IFS= read -r h; do [ -n "$h" ]&&printf '%s\tPLANNED\n' "$h"; done <"$fleet"; } >"$OUTPUT_DIR/plan.tsv"; chmod 600 "$OUTPUT_DIR/plan.tsv"; }
verify(){ grep -q "^canary=$CANARY" "$OUTPUT_DIR/plan.tsv"; grep -q $'host-a\tPLANNED' "$OUTPUT_DIR/plan.tsv"; printf 'PASS: canary plan verified\n'; }
fail(){ CANARY=not-in-fleet bash "$0" run&&exit 1||true; run; verify; }
cleanup(){ rm -rf -- "$OUTPUT_DIR"; }
case "${1:-verify}" in install|configure|run) run;; verify|test) verify;; fail) fail;; cleanup) cleanup;; *) exit 64;; esac

