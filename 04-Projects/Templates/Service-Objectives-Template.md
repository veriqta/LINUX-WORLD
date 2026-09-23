# {{PROJECT_NAME}}: Service Objectives and Capacity

## User journey

Define the user-visible action whose success and speed matter.

## Indicators and objectives

| SLI | Measurement | SLO | Window | Exclusions |
| --- | --- | --- | --- | --- |
| Availability | {{GOOD_EVENTS_DIVIDED_BY_VALID_EVENTS}} | {{TARGET}} | {{WINDOW}} | {{JUSTIFIED_EXCLUSIONS}} |
| Latency | {{MEASUREMENT}} | {{TARGET}} | {{WINDOW}} | {{EXCLUSIONS}} |
| Correctness | {{MEASUREMENT}} | {{TARGET}} | {{WINDOW}} | {{EXCLUSIONS}} |

## Error budget and alerts

Define permitted bad events or unavailable time, burn-rate thresholds, response actions, and who may approve risky change. Alerts must be actionable and tied to user impact or an imminent objective breach.

## Capacity model

| Resource | Baseline | Peak | Limit | Growth | Headroom | Scale action |
| --- | ---: | ---: | ---: | ---: | ---: | --- |
| {{RESOURCE}} | {{VALUE}} | {{VALUE}} | {{VALUE}} | {{RATE}} | {{VALUE}} | {{ACTION}} |

## Load validation

Document workload shape, warm-up, duration, concurrency, dataset, safety ceiling, success criteria, monitoring, abort condition, and cleanup. Never load-test an external system without authorization.
