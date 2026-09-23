#!/usr/bin/env bash
set -u
start=$(date +%s%N)
i=0
while [ "$i" -lt 25000 ]; do i=$((i+1)); :; done
end=$(date +%s%N)
printf 'iterations=25000 elapsed_ns=%s\n' "$((end-start))"

