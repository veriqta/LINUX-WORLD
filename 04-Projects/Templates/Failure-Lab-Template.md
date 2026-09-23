# {{PROJECT_NAME}}: Controlled Failure Lab

## Safety boundary

- **Authorized targets:** {{LAB_RESOURCES}}
- **Maximum impact:** {{BOUND}}
- **Abort condition:** {{CONDITION}}
- **Recovery checkpoint:** {{SNAPSHOT_OR_BACKUP}}
- **Observer:** {{ROLE_IF_REQUIRED}}

## Hypothesis

When {{FAILURE}} occurs, {{DETECTION}} should trigger within {{TIME}}, the system should {{DEGRADED_BEHAVIOR}}, and recovery should complete within {{TARGET}}.

## Baseline and injection

Record health, workload, resource use, logs, alerts, and synchronized time. Use the narrowest reversible injection, validate its exact target, and explain every destructive effect.

## Observe and recover

Record detection time, user impact, evidence, automatic response, operator actions, and side effects. Restore state, run end-to-end validation, confirm data integrity, and watch for delayed effects.

## Findings

| Expected | Observed | Gap | Owner | Corrective action | Due |
| --- | --- | --- | --- | --- | --- |
| {{EXPECTED}} | {{OBSERVED}} | {{GAP}} | {{ROLE}} | {{ACTION}} | {{DATE}} |
