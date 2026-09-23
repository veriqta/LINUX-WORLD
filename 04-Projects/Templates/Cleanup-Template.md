# {{PROJECT_NAME}}: Cleanup

## Before cleanup

- Export sanitized evidence that must be retained.
- Confirm exact lab targets and the active directory.
- Stop workload generation and scheduled jobs.
- Record resources that predated the project.

## Removal order

1. Disable timers, schedulers, and external triggers.
2. Stop and disable project services.
3. Remove project firewall rules and network exposure.
4. Remove generated data, logs, caches, and temporary files using validated paths.
5. Remove project configuration and executables.
6. Remove dedicated identities only after proving they own no unrelated resources.
7. Remove packages only when installed solely for the project.
8. Destroy disposable hosts or revert the snapshot when appropriate.

## Verification

Prove no project process, unit, timer, socket, port, mount, firewall rule, identity, file, package, scheduled task, container, or cloud resource remains.

## Retained artifacts

| Artifact | Reason | Sanitized | Retention |
| --- | --- | :---: | --- |
| {{ARTIFACT}} | {{REASON}} | Yes / No | {{PERIOD}} |

Never use an unvalidated variable, wildcard, empty path, or broad recursive deletion in cleanup automation.
