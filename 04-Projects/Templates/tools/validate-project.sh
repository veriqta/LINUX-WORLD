#!/usr/bin/env bash
set -Eeuo pipefail

usage() { printf 'Usage: %s PROJECT_DIRECTORY PROFILE\nProfiles: junior, mid-level, senior, capstone\n' "$0" >&2; }
[[ $# -eq 2 ]] || { usage; exit 64; }
project_dir=$1
profile=$2
[[ -d "${project_dir}" ]] || { printf 'ERROR: directory not found: %s\n' "${project_dir}" >&2; exit 66; }
case "${profile}" in junior|mid-level|senior|capstone) ;; *) usage; exit 64 ;; esac

common=(README.md PROJECT-BRIEF.md PREREQUISITES.md ENVIRONMENT-SETUP.md ARCHITECTURE.md IMPLEMENTATION-GUIDE.md TROUBLESHOOTING.md ACCEPTANCE-TESTS.md OPERATIONS-RUNBOOK.md CLEANUP.md PORTFOLIO-NOTES.md)
advanced=(THREAT-MODEL.md SERVICE-OBJECTIVES.md BACKUP-RECOVERY.md EVIDENCE-REGISTER.md PROJECT-ASSESSMENT.md)
junior=(STEP-BY-STEP-GUIDE.md COMMANDS-EXPLAINED.md)
issues=0

for item in "${common[@]}"; do
  [[ -s "${project_dir}/${item}" ]] || { printf 'MISSING %s\n' "${item}"; issues=$((issues + 1)); }
done
if [[ "${profile}" == junior ]]; then required=("${junior[@]}"); else required=("${advanced[@]}"); fi
for item in "${required[@]}"; do
  [[ -s "${project_dir}/${item}" ]] || { printf 'MISSING %s\n' "${item}"; issues=$((issues + 1)); }
done
for directory in scripts config examples tests assets; do
  [[ -d "${project_dir}/${directory}" ]] || { printf 'MISSING-DIRECTORY %s/\n' "${directory}"; issues=$((issues + 1)); }
done

placeholder_hits=$(grep -RIl --exclude-dir=.git -E '\{\{[A-Z0-9_]+\}\}' "${project_dir}" 2>/dev/null || true)
if [[ -n "${placeholder_hits}" ]]; then
  printf 'UNRESOLVED-PLACEHOLDERS\n%s\n' "${placeholder_hits}"
  issues=$((issues + 1))
fi

while IFS= read -r -d '' script; do
  bash -n "${script}" || issues=$((issues + 1))
done < <(find "${project_dir}" -type f -name '*.sh' -print0)

(( issues == 0 )) || { printf 'FAIL: %d quality issue(s) found.\n' "${issues}" >&2; exit 1; }
printf 'PASS: %s satisfies %s structural checks.\n' "${project_dir}" "${profile}"
