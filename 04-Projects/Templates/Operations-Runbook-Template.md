# {{PROJECT_NAME}}: Operations Runbook

## Service card

| Item | Value |
| --- | --- |
| Purpose and owner | {{PURPOSE_AND_ROLE}} |
| User impact | {{IMPACT}} |
| Dependencies | {{DEPENDENCIES}} |
| Configuration | {{PATHS}} |
| Logs and metrics | {{LOCATIONS}} |
| Backup | {{LOCATION_WITHOUT_SECRETS}} |
| Escalation | {{PUBLIC_SAFE_PROCESS}} |

## Health check

```bash
{{PROCESS_SERVICE_PORT_LOG_AND_END_TO_END_CHECKS}}
```

State what healthy means for each check.

## Routine operations

Document safe procedures for start, stop, restart, reload, status, log inspection, configuration validation, deployment, rollback, backup, restore, rotation, and capacity review.

## Alert response

| Alert | Immediate check | Likely causes | Safe mitigation | Escalate when |
| --- | --- | --- | --- | --- |
| {{ALERT}} | {{CHECK}} | {{CAUSES}} | {{MITIGATION}} | {{CONDITION}} |

## Incident procedure

1. Confirm impact and incident level.
2. Preserve volatile evidence before changing state when safe.
3. Stabilize using the least risky documented action.
4. Communicate facts, uncertainty, owner, and next update.
5. Test one evidence-based hypothesis at a time.
6. Recover, validate end to end, and monitor.
7. Record the timeline and create a blameless postmortem.

## Rollback and maintenance

Define the rollback trigger, decision owner, commands, compatibility limits, validation, and fallback. Add daily, weekly, monthly, and quarterly maintenance with evidence locations.

## Known limitations

List limitations, temporary workarounds, risk owners, and target dates. Never describe an untested workaround as guaranteed.
