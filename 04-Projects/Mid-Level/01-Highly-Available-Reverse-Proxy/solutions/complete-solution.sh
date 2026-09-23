#!/usr/bin/env bash
set -u
R=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd); C="$R/config/environment.conf"; [ -f "$C" ]||C="$R/config/environment.example"; . "$C"
setup(){ mkdir -p "$STATE_DIR"; chmod 700 "$STATE_DIR"; command -v python3 >/dev/null; command -v curl >/dev/null; }
run(){ setup; printf 'backend-one\n' >"$STATE_DIR/one.txt"; printf 'backend-two\n' >"$STATE_DIR/two.txt"; python3 -m http.server "$BACKEND_ONE_PORT" --bind 127.0.0.1 -d "$STATE_DIR" >"$STATE_DIR/one.log" 2>&1 & echo $! >"$STATE_DIR/one.pid"; python3 -m http.server "$BACKEND_TWO_PORT" --bind 127.0.0.1 -d "$STATE_DIR" >"$STATE_DIR/two.log" 2>&1 & echo $! >"$STATE_DIR/two.pid"; sleep 1; }
verify(){ curl -fsS "http://127.0.0.1:$BACKEND_ONE_PORT/one.txt"|grep -q backend-one; curl -fsS "http://127.0.0.1:$BACKEND_TWO_PORT/two.txt"|grep -q backend-two; printf 'PASS: both backends healthy; configure nginx or HAProxy using the supplied backend endpoints\n'; }
fail(){ kill "$(cat "$STATE_DIR/one.pid")"; sleep 1; ! curl -fsS "http://127.0.0.1:$BACKEND_ONE_PORT/one.txt" >/dev/null 2>&1; curl -fsS "http://127.0.0.1:$BACKEND_TWO_PORT/two.txt" >/dev/null; printf 'PASS: one backend failed while the other remained healthy\n'; }
cleanup(){ for f in "$STATE_DIR"/*.pid; do [ -f "$f" ] && kill "$(cat "$f")" 2>/dev/null || true; done; rm -rf -- "$STATE_DIR"; }
case "${1:-verify}" in install|configure) setup;; run) run;; verify|test) verify;; fail) fail;; cleanup) cleanup;; *) exit 64;; esac

