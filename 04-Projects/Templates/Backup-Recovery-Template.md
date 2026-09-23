# {{PROJECT_NAME}}: Backup and Recovery

## Recovery objectives

| Data or service | RPO | RTO | Owner | Reason |
| --- | --- | --- | --- | --- |
| {{ASSET}} | {{RPO}} | {{RTO}} | {{ROLE}} | {{RATIONALE}} |

## Backup design

Document included data, excluded ephemeral state, consistency, schedule, retention, encryption, access, off-host copies, integrity checks, monitoring, and capacity.

## Restore procedure

1. Confirm the authorized target and incident state.
2. Select and verify the recovery point.
3. Isolate or stop writers when consistency requires it.
4. Restore into a separate validation location when possible.
5. Validate ownership, permissions, integrity, application behavior, and dependencies.
6. Record actual recovery time and recovered data point.

## Restore test record

| Date | Backup point | Target | Integrity | Functional result | Actual RPO | Actual RTO | Evidence |
| --- | --- | --- | --- | --- | --- | --- | --- |
| {{DATE}} | {{POINT}} | {{TARGET}} | {{RESULT}} | {{RESULT}} | {{VALUE}} | {{VALUE}} | {{LINK}} |

## Failure handling

Cover missing or corrupt backups, unavailable keys, insufficient capacity, incompatible versions, partial restores, and failed validation. A backup is not proven until a restore test passes.
