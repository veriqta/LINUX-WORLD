# Production Linux Platform: Integration Map

## Inputs from earlier projects

- Baseline and health checks
- Identity and access controls
- Secure shared storage and backup
- systemd service lifecycle
- Log and evidence collection
- Capacity monitoring
- Reverse proxy, DNS, and file transfer
- Drift, patch, compliance, and rollout controls
- Observability, cgroups, recovery, credential lifecycle, and image management

## Integration rule

Do not copy components blindly. Define contracts between them:

| Contract | Required definition |
| --- | --- |
| Identity | Principal, credential, authority, lifetime, revocation |
| Network | Source, destination, protocol, port, encryption, failure |
| State | Owner, format, consistency, backup, restore |
| Health | User outcome, dependency state, timeout, threshold |
| Change | Artifact, validation, cohort, gate, rollback |
| Telemetry | Signal, labels, retention, access, missing-data detection |

