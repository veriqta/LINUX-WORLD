# Multi-Site Operations Simulation: Capstone Acceptance Tests

## Review gates

| Gate | Required proof |
| --- | --- |
| Requirements | Stakeholders, objectives, constraints, assumptions, and exclusions |
| Architecture | Diagrams, ADRs, dependency and failure-domain maps |
| Security | Threat model, access tests, secret controls, audit, and remediation |
| Build | Clean reproducible deployment from versioned inputs |
| Function | End-to-end user journeys and negative tests |
| Observability | SLOs, dashboards, alerts, deployment markers, and telemetry-loss detection |
| Capacity | Baseline, peak test, bottleneck, headroom, and forecast |
| Change | Canary, health gates, halt, rollback, and convergence |
| Resilience | Dependency, resource, host, and control-plane failures |
| Recovery | Restore or failover with measured RPO and RTO |
| Operations | Independent runbook exercise and escalation |
| Governance | Owners, reviews, exceptions, retention, and lifecycle |
| Decommission | Access revoked, data handled, costs stopped, artifacts removed |

## Mandatory scenarios

- Site isolation
- Asymmetric network failure
- Stale data
- DNS cache delay
- Capacity shortfall
- Split operation
- And failed failback.

## Test record

For every test, record identifier, owner, time, environment, version, preconditions, action, expected result, actual result, sanitized evidence, recovery, and follow-up.

## Failure acceptance

A failed test is valuable evidence. Do not hide it. Record the cause, risk, corrective action, retest, and remaining limitation.

## Final validation

Run a full clean rebuild and one unannounced game-day scenario reviewed by another person.

