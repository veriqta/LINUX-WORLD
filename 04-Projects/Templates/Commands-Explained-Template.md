# {{PROJECT_NAME}}: Commands Explained

## Command record

### `{{COMMAND_SUMMARY}}`

```bash
{{FULL_COMMAND_WITH_SAFE_VALUES}}
```

- **Purpose:** {{PURPOSE}}
- **Run as:** {{USER_OR_PRIVILEGE}}
- **Reads:** {{INPUTS}}
- **Changes:** {{FILES_SERVICES_KERNEL_OR_NETWORK_STATE}}
- **Exit behavior:** {{SUCCESS_AND_FAILURE_CODES}}
- **Idempotent:** Yes / No / Conditional
- **Verify:** `{{VERIFICATION_COMMAND}}`
- **Undo:** `{{ROLLBACK_COMMAND_OR_PROCEDURE}}`

| Token or option | Meaning | Why used here |
| --- | --- | --- |
| `{{TOKEN}}` | {{MEANING}} | {{RATIONALE}} |

## Distribution differences

| Task | Debian family | RHEL family | Notes |
| --- | --- | --- | --- |
| {{TASK}} | `{{COMMAND}}` | `{{COMMAND}}` | {{VERSION_DIFFERENCE}} |

## Safety notes

Flag recursive changes, force options, filesystem creation, firewall replacement, boot changes, identity deletion, secret exposure, variables, and globs.
