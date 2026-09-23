# Secure Team Workspace: Operations Runbook

## Purpose

Operate, verify, troubleshoot, recover, and remove this project.

## Normal state

Document expected processes, users, groups, files, permissions, ports, services, schedules, logs, capacity, and health output.

## Standard operation

1. Check status.
2. Run health verification.
3. Review recent logs.
4. Confirm resource headroom.
5. Perform the approved operation.
6. Verify the user-visible result.
7. Record changes.

## Common failures

- New files with wrong group
- ACL mask surprises
- Renamed files
- Copied content
- Service accounts
- And offboarded members.

## Recovery order

1. Protect data and access.
2. Stop harmful repeated actions.
3. Restore known-good configuration or state.
4. Start the smallest required component.
5. Verify logs, health, security controls, and user outcome.
6. Monitor for recurrence.

## Backup and rollback

Define configuration and state requiring backup, location, permissions, integrity check, retention, restore test, rollback trigger, and verification.

## Maintenance

Review dependencies, accounts, permissions, logs, storage, alerts, certificates, schedules, and documentation on a defined cadence.

## Cleanup

Stop project processes and schedules, remove only named project resources, reload the service manager when required, and verify no listener or process remains.

