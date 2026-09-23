#!/usr/bin/env bash
set -Eeuo pipefail

usage() {
  printf 'Usage: %s PROFILE DESTINATION\nProfiles: junior, mid-level, senior, capstone\n' "$0" >&2
}

[[ $# -eq 2 ]] || { usage; exit 64; }
profile=$1
destination=$2
case "${profile}" in junior|mid-level|senior|capstone) ;; *) usage; exit 64 ;; esac

readonly TOOL_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
readonly TEMPLATE_DIR="$(cd -- "${TOOL_DIR}/.." && pwd -P)"
[[ ! -e "${destination}" ]] || { printf 'ERROR: destination already exists: %s\n' "${destination}" >&2; exit 73; }
mkdir -p -- "${destination}"

copy_template() {
  local source_name=$1 destination_name=$2
  cp -- "${TEMPLATE_DIR}/${source_name}" "${destination}/${destination_name}"
}

copy_template Project-README-Template.md README.md
copy_template Project-Brief-Template.md PROJECT-BRIEF.md
copy_template Prerequisites-Template.md PREREQUISITES.md
copy_template Environment-Setup-Template.md ENVIRONMENT-SETUP.md
copy_template Architecture-Template.md ARCHITECTURE.md
copy_template Implementation-Guide-Template.md IMPLEMENTATION-GUIDE.md
copy_template Troubleshooting-Template.md TROUBLESHOOTING.md
copy_template Acceptance-Tests-Template.md ACCEPTANCE-TESTS.md
copy_template Operations-Runbook-Template.md OPERATIONS-RUNBOOK.md
copy_template Cleanup-Template.md CLEANUP.md
copy_template Portfolio-Notes-Template.md PORTFOLIO-NOTES.md
copy_template Interview-Questions-Template.md INTERVIEW-QUESTIONS.md
copy_template Architecture-Decision-Record-Template.md ADR-TEMPLATE.md

if [[ "${profile}" == junior ]]; then
  copy_template Step-by-Step-Guide-Template.md STEP-BY-STEP-GUIDE.md
  copy_template Commands-Explained-Template.md COMMANDS-EXPLAINED.md
  copy_template Threat-Model-Template.md THREAT-MODEL.md
else
  copy_template Threat-Model-Template.md THREAT-MODEL.md
  copy_template Service-Objectives-Template.md SERVICE-OBJECTIVES.md
  copy_template Backup-Recovery-Template.md BACKUP-RECOVERY.md
  copy_template Failure-Lab-Template.md FAILURE-LAB.md
  copy_template Postmortem-Template.md POSTMORTEM-TEMPLATE.md
  copy_template Evidence-Register-Template.md EVIDENCE-REGISTER.md
  copy_template Project-Assessment-Template.md PROJECT-ASSESSMENT.md
fi

cp -R -- "${TEMPLATE_DIR}/starter/." "${destination}/"
find "${destination}/scripts" "${destination}/tests" -type f -name '*.sh' -exec chmod 0755 {} +
printf 'Created %s project scaffold at %s\n' "${profile}" "${destination}"
printf 'Next: replace placeholders, implement the starter TODOs, then run validate-project.sh.\n'
