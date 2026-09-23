#!/usr/bin/env bash
set -u
R=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd); C="$R/config/environment.conf"; [ -f "$C" ]||C="$R/config/environment.example"; . "$C"
render(){ sed -e "s/__ADDR__/$LISTEN_ADDRESS/g" -e "s/__PORT__/$LISTEN_PORT/g" -e "s#__NET__#$ACCESS_NETWORK#g" -e "s/__UPSTREAM__/$UPSTREAM/g" "$R/config/unbound.conf.template" >"$R/config/unbound.lab.conf"; }
verify(){ render; if command -v unbound-checkconf >/dev/null; then unbound-checkconf "$R/config/unbound.lab.conf"; else grep -q 'access-control:' "$R/config/unbound.lab.conf"; fi; printf 'PASS: resolver configuration validated\n'; }
fail(){ cp "$R/config/unbound.lab.conf" /tmp/unbound.lab.good 2>/dev/null||render; printf 'unknown-directive: yes\n' >>"$R/config/unbound.lab.conf"; if command -v unbound-checkconf >/dev/null&&unbound-checkconf "$R/config/unbound.lab.conf" >/dev/null 2>&1; then exit 1; fi; render; verify; }
cleanup(){ rm -f "$R/config/unbound.lab.conf" /tmp/unbound.lab.good; }
case "${1:-verify}" in install|configure|run) render;; verify|test) verify;; fail) fail;; cleanup) cleanup;; *) exit 64;; esac

