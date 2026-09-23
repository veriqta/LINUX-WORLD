# cgroup Capacity Governance: Game-Day Guide

## Scenarios

- CPU throttling
- Cgroup OOM
- PID exhaustion
- I/O contention
- Priority inversion
- Host pressure
- And invalid override

## Procedure

1. Approve scope, abort conditions, observers, and rollback.
2. Record healthy baseline.
3. Inject one bounded failure.
4. Measure detection and impact.
5. Preserve volatile evidence.
6. Mitigate without revealing the answer.
7. Recover and verify users, data, security, queues, and redundancy.
8. Record timing, decisions, surprises, and actions.

Use game-days only in an isolated lab.

