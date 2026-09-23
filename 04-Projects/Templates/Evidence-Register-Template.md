# {{PROJECT_NAME}}: Evidence Register

Evidence must be reproducible, timestamped, sanitized, and understandable without the original lab.

| Evidence ID | Requirement or claim | Method | Artifact | Collected | Environment | Sanitized | Reviewer |
| --- | --- | --- | --- | --- | --- | :---: | --- |
| EV-001 | {{REQUIREMENT_ID}} | {{COMMAND_OR_TEST}} | `evidence/{{FILE}}` | {{UTC_TIME}} | {{LAB_ID}} | Yes | {{ROLE}} |

## Collection rules

- Capture the method, result, exit status, timestamp, and relevant version.
- Prefer text or structured reports over screenshots when equally useful.
- Preserve only the minimum logs needed for the claim.
- Redact secrets, personal data, addresses, account identifiers, and sensitive topology.
- Keep failed-test evidence; never delete it to make a project appear successful.
- Hash important reports when integrity matters.

## Review

Confirm every mandatory requirement has evidence, artifacts open, redaction is complete, timestamps are consistent, claims match results, and gaps are disclosed.
