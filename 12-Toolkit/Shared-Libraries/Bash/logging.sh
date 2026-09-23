#!/usr/bin/env bash
log(){ local level="$1";shift;printf '%s level=%s message=%q\n' "$(date -u +%Y-%m-%dT%H:%M:%SZ)" "$level" "$*" >&2;}
info(){ log INFO "$@";}
warn(){ log WARNING "$@";}
die(){ local code="$1";shift;log ERROR "$*";exit "$code";}
