#!/usr/bin/env bash
set -u
R=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd); cfg="$R/config/environment.conf"; backup=$(mktemp)
[ -f "$cfg" ] && cp "$cfg" "$backup" || cp "$R/config/environment.example" "$backup"
trap 'cp "$backup" "$cfg"; rm -f "$backup"' EXIT
cp "$backup" "$cfg"; sed -i 's#^INPUT_FILE=.*#INPUT_FILE=examples/does-not-exist.log#' "$cfg"
if bash "$R/solutions/complete-solution.sh" run; then exit 1; fi
cp "$backup" "$cfg"; bash "$R/solutions/complete-solution.sh" run >/dev/null
printf 'PASS: missing input detected and recovered\n'
