#!/usr/bin/env bash
set -u
lab=$(mktemp -d)
trap 'chmod -R u+rwX "$lab"; rm -rf -- "$lab"' EXIT
mkdir "$lab/shared"; chmod 700 "$lab/shared"
test "$(stat -c %A "$lab/shared" | cut -c6)" != s
chmod 2770 "$lab/shared"
test "$(stat -c %A "$lab/shared" | cut -c6)" = s
printf 'PASS: missing setgid detected and recovered\n'
