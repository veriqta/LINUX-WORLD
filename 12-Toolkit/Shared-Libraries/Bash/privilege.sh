#!/usr/bin/env bash
is_root(){ [[ "${EUID:-$(id -u)}" -eq 0 ]];}
require_root(){ is_root||{ echo 'This operation requires approved root access.' >&2;return 77;};}
refuse_root(){ is_root&&{ echo 'Run this operation without root.' >&2;return 77;}||return 0;}
