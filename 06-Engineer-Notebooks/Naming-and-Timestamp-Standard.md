# Naming and Timestamp Standard

## Record name

Use:

`YYYYMMDD-HHMMZ_environment_system_record-type_short-description.md`

Example:

`20260923-1415Z_lab_web01_service-record_nginx-reload.md`

Use lowercase ASCII letters, numbers and hyphens in variable parts. Avoid spaces, personal names, secrets and internal customer identifiers.

## Record ID

Use a stable ID inside the document:

`NB-YYYYMMDD-NNN`

Example: `NB-20260923-004`. Do not reuse an ID after deletion or supersession.

## Timestamps

Use ISO 8601 UTC:

`2026-09-23T14:15:00Z`

Record the original timezone only when it matters to an external event, then include the UTC conversion. Use synchronized time sources and state when a clock is known to be inaccurate.

## Evidence IDs

Use `E-001`, `E-002` and so on within one notebook. Use `H-001` for hypotheses, `D-001` for decisions and `A-001` for follow-up actions.

## Supersession

Do not overwrite an approved historical record. Mark it Superseded and link both directions to the replacement. Corrections must state what changed, why and who reviewed it.
