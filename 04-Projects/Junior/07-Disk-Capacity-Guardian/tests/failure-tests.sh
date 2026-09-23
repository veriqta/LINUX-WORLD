#!/usr/bin/env bash
set -u
R=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd); cfg="$R/config/environment.conf"; backup=$(mktemp)
[ -f "$cfg" ] && cp "$cfg" "$backup" || cp "$R/config/environment.example" "$backup"
trap 'cp "$backup" "$cfg"; rm -f "$backup"' EXIT
cp "$backup" "$cfg"; sed -i 's/^WARN_PERCENT=.*/WARN_PERCENT=95/;s/^CRIT_PERCENT=.*/CRIT_PERCENT=80/' "$cfg"
if bash "$R/solutions/complete-solution.sh" run; then exit 1; fi
cp "$backup" "$cfg"; bash "$R/solutions/complete-solution.sh" run >/dev/null || test $? -le 2
printf 'PASS: invalid thresholds detected\n'
