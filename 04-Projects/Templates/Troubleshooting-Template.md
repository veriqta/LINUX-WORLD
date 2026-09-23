# {{PROJECT_NAME}}: Troubleshooting

## Investigation method

1. Define expected and observed behavior.
2. Bound impact, affected components, and start time.
3. Preserve evidence and record current state.
4. Check recent changes and dependencies.
5. Form one falsifiable hypothesis.
6. Run the least invasive discriminating test.
7. Mitigate, verify end to end, and document the cause.

## Fast triage

```bash
{{SERVICE_STATUS_COMMAND}}
{{RECENT_LOG_COMMAND}}
{{PORT_OR_SOCKET_COMMAND}}
{{RESOURCE_COMMAND}}
{{DEPENDENCY_CHECK}}
```

Explain healthy and unhealthy signals. Do not recommend blind restarts before capturing evidence.

## Symptom matrix

| Symptom | Evidence | Likely causes | Discriminating test | Safe recovery |
| --- | --- | --- | --- | --- |
| {{SYMPTOM}} | {{EVIDENCE}} | {{CAUSES}} | {{TEST}} | {{RECOVERY}} |

## Diagnostic layers

Cover configuration, identity and permissions, SELinux or AppArmor, service dependencies, sockets and routing, DNS and TLS, resource pressure, logs, and upstream or downstream health.

## Escalation bundle

List sanitized artifacts, timestamps with timezone, reproduction steps, impact, attempted changes, and current mitigation. Never include credentials or unrestricted sensitive logs.
