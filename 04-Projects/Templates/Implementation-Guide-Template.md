# {{PROJECT_NAME}}: Implementation Guide

## Before making changes

Confirm the environment is disposable or backed up. Record the distribution, kernel, privilege model, IP plan, and current state. Read rollback and cleanup first, then run preflight checks.

## Build plan

| Stage | Change | Risk | Checkpoint | Rollback |
| --- | --- | --- | --- | --- |
| 1 | {{DEPENDENCIES}} | {{RISK}} | {{VERIFY_COMMAND}} | {{ROLLBACK}} |
| 2 | {{IDENTITIES_AND_PATHS}} | {{RISK}} | {{VERIFY_COMMAND}} | {{ROLLBACK}} |
| 3 | {{CONFIGURATION}} | {{RISK}} | {{VERIFY_COMMAND}} | {{ROLLBACK}} |
| 4 | {{SERVICE_OR_AUTOMATION}} | {{RISK}} | {{VERIFY_COMMAND}} | {{ROLLBACK}} |
| 5 | {{OBSERVABILITY_AND_HARDENING}} | {{RISK}} | {{VERIFY_COMMAND}} | {{ROLLBACK}} |

## Repeat for every stage

### Stage {{NUMBER}}: {{NAME}}

**Objective:** {{MEASURABLE_RESULT}}

**Design:** Explain the approach, one credible alternative, and why it was not selected.

```bash
{{COMMANDS}}
```

Explain each privileged, unfamiliar, or risky option. Show the relevant configuration, owner, group, mode, and native validation command.

**Checkpoint:**

```bash
{{VERIFICATION_COMMANDS}}
```

State the expected condition. If it fails, link to the exact troubleshooting entry and stop before continuing. Document rollback to the recorded prior state.

## Final validation

Run syntax validation before restart, then functional, negative, security, failure, recovery, reboot-persistence, and cleanup tests. Compare results with acceptance criteria, record versions, and preserve sanitized evidence.

## Independent rebuild

Have a reviewer build the project in a clean environment using only public documentation. Treat unclear steps as defects.
