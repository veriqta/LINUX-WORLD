# Production Operations

Production Operations teaches Linux system administrators how to keep live services safe, available, supportable, and recoverable. It covers the full operational lifecycle, from ownership and readiness through monitoring, controlled change, incidents, recovery, postmortems, and continuous improvement.

> The goal is not to memorize procedures. The goal is to make correct, evidence-based decisions under normal conditions and pressure.

## Start here

1. [How to Use Production Operations](./How-to-Use-Production-Operations.md)
2. [Production Operations Learning Path](./Production-Operations-Learning-Path.md)
3. [Production Operations Principles](./Production-Operations-Principles.md)
4. [Roles, Ownership and Escalation](./Roles-Ownership-and-Escalation.md)
5. [Production Safety and Access](./Production-Safety-and-Access.md)
6. [Operational Documentation Standards](./Operational-Documentation-Standards.md)
7. [Operations Maturity Model](./Operations-Maturity-Model.md)

## Sections

| Section | Purpose | Primary output |
|---|---|---|
| [Service Ownership](./Service-Ownership/README.md) | make accountability, support boundaries, dependencies, and service criticality explicit | catalog entry, ownership record, dependency map, support schedule, and dated review |
| [Runbooks](./Runbooks/README.md) | execute a known operational task safely and consistently | pre-check output, command record, verification result, rollback state, and operator timestamp |
| [Playbooks](./Playbooks/README.md) | coordinate people, decisions, communications, and technical work during a broad event | incident timeline, role assignments, decision log, status updates, and recovery evidence |
| [On Call](./On-Call/README.md) | detect, assess, escalate, and stabilize service risk during support coverage | alert record, acknowledgement time, severity, actions, escalation, and handover |
| [Operational Readiness](./Operational-Readiness/README.md) | prove a service can be launched, supported, changed, and recovered | review findings, owners, test results, accepted risks, blockers, and approval |
| [Monitoring and Alerting](./Monitoring-and-Alerting/README.md) | turn service behavior into actionable, trustworthy operational signals | signal definition, query, threshold rationale, routing, test result, and review date |
| [Performance and Capacity](./Performance-and-Capacity/README.md) | measure demand, constraints, headroom, saturation, and future resource needs | baseline, workload, percentiles, utilization, saturation, forecast, and assumptions |
| [Configuration Management](./Configuration-Management/README.md) | control production configuration as reviewed, versioned, testable state | version, diff, validation, approval, deployment record, and rollback artifact |
| [Patch and Change Management](./Patch-and-Change-Management/README.md) | deliver necessary change with bounded risk and proven recovery | risk assessment, plan, approvals, pre-checks, deployment evidence, and post-checks |
| [Backup and Recovery](./Backup-and-Recovery/README.md) | preserve recoverable data and prove restoration within agreed objectives | job result, immutable copy, checksum, restore test, RPO result, and RTO result |
| [Disaster Recovery](./Disaster-Recovery/README.md) | restore critical services after loss of a site, region, platform, or major dependency | declaration, recovery sequence, replication state, exercise record, RPO, RTO, and sign-off |
| [Incident Response](./Incident-Response/README.md) | reduce harm through structured command, investigation, mitigation, and communication | declaration, severity, timeline, decisions, commands, impact, recovery, and closure |
| [Postmortems](./Postmortems/README.md) | learn from incidents through evidence-based, blameless causal analysis | validated timeline, impact, contributing conditions, controls, actions, owners, and due dates |
| [Operations Metrics and Improvement](./Operations-Metrics-and-Improvement/README.md) | measure operational outcomes and convert trends into owned improvements | defined metric, source, query, target, trend, interpretation, owner, and review action |
| [Templates](./Templates/README.md) | capture consistent, reviewable operational records | completed required fields, links to evidence, owner, timestamps, decision, and review date |

## Operating lifecycle

```text
Own → Prepare → Observe → Operate → Change → Respond → Recover → Learn → Improve
```

## Audience

- Linux system administrators
- Operations and infrastructure engineers
- On-call responders
- DevOps, platform, cloud, and reliability engineers
- Technical leads and service owners
- Students preparing for production responsibility

## Use in a lab first

Commands and procedures may affect availability, data, access, and security. Use an isolated environment, replace placeholders deliberately, consult distribution and service documentation, and follow organizational authorization. Never treat this repository as permission to access or modify a system.

## Completion standard

A reader should be able to own a service, assess readiness, interpret operational signals, execute a controlled change, respond to an incident, restore from backup, participate in disaster recovery, write a postmortem, and turn findings into measurable improvements.
