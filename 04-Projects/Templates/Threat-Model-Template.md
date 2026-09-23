# {{PROJECT_NAME}}: Threat Model

## Scope and assets

State the protected system, users, data, interfaces, trust boundaries, and exclusions.

| Asset | Sensitivity | Integrity need | Availability need | Owner |
| --- | --- | --- | --- | --- |
| {{ASSET}} | {{LEVEL}} | {{NEED}} | {{NEED}} | {{ROLE}} |

## Actors and assumptions

Consider unauthorized local users, compromised service accounts, malicious input, network attackers where relevant, operator error, dependency compromise, and resource exhaustion. Do not treat a firewall as the only control.

## Threat register

| ID | Threat | Entry point | Impact | Likelihood | Prevent | Detect | Recover | Residual risk |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| T-01 | {{THREAT}} | {{ENTRY}} | {{IMPACT}} | {{LEVEL}} | {{CONTROL}} | {{SIGNAL}} | {{ACTION}} | {{RISK}} |

## Required controls

- dedicated identities and least privilege;
- restrictive ownership and permissions;
- authenticated and encrypted remote access;
- safe secret injection and rotation;
- input validation and secure temporary files;
- auditable administrative actions;
- patch and dependency process;
- tested containment and recovery.

## Verification

Map every control to a repeatable security test. Include a negative test proving that a prohibited action is denied.
