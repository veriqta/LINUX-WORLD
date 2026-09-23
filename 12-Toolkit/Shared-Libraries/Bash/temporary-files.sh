#!/usr/bin/env bash
TOOLKIT_TMP=""
make_private_tmpdir(){ umask 077;TOOLKIT_TMP=$(mktemp -d "${TMPDIR:-/tmp}/linux-world.XXXXXX");trap cleanup_tmp EXIT INT TERM HUP;}
cleanup_tmp(){ [[ -n "${TOOLKIT_TMP:-}" && -d "$TOOLKIT_TMP" ]]&&rm -rf -- "$TOOLKIT_TMP";}
