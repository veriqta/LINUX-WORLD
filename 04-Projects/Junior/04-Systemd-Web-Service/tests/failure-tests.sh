#!/usr/bin/env bash
set -u
R=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
. "$R/config/environment.example"
python3 -m http.server "$PORT" --bind 127.0.0.1 >/tmp/linux-world-port-conflict.log 2>&1 &
pid=$!
trap 'kill "$pid" 2>/dev/null || true; rm -f /tmp/linux-world-port-conflict.log' EXIT
sleep 1
if python3 -m http.server "$PORT" --bind 127.0.0.1 >/dev/null 2>&1; then exit 1; fi
printf 'PASS: port conflict reproduced\n'
