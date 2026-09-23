# High-Scale Log Pipeline: Game-Day Guide

## Scenarios

- Collector loss
- Downstream slowdown
- Queue full
- Malformed burst
- Duplicate replay
- Clock skew
- And storage exhaustion

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

