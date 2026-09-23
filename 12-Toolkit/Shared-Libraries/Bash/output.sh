#!/usr/bin/env bash
kv(){ printf '%s=%s\n' "$1" "$2";}
prometheus_metric(){ local name="$1" value="$2";[[ "$name" =~ ^[a-zA-Z_:][a-zA-Z0-9_:]*$ ]]||return 64;printf '%s %s\n' "$name" "$value";}
