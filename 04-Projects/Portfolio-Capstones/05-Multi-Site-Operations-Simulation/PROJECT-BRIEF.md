# Multi-Site Operations Simulation: Capstone Brief

## Mission

Operate a Linux service across two simulated sites with traffic routing, replicated or restorable state, site-failure procedures, observability, capacity planning, and disaster exercises.

## Audience and stakeholders

Define platform users, application owners, operators, security, risk, finance or capacity stakeholders, incident responders, and decision authorities.

## Required architecture

Include:

- Context, component, deployment, trust-boundary, data-flow, and failure-domain views
- Control plane and data plane
- State ownership and consistency
- Identity, credentials, certificates, and authorization
- Network paths and policy boundaries
- Host baseline and service lifecycle
- Telemetry, alerts, and evidence flow
- Backup, restore, failover, and rebuild
- Change, rollback, exception, and retirement paths

## Quality attributes

Set measurable targets for availability, latency, recovery time, recovery point, capacity, security, operability, maintainability, auditability, and cost.

## Core domains

- Failure domains
- DNS or proxy routing
- Data consistency
- Backup transfer
- Time synchronization
- Monitoring
- And operator coordination.

## Required failure scenarios

- Site isolation
- Asymmetric network failure
- Stale data
- DNS cache delay
- Capacity shortfall
- Split operation
- And failed failback.

## Deliverables

- Site architecture
- Traffic policy
- Data strategy
- Deployment automation
- Health model
- Failover and failback
- Game-day report
- And runbook.

## Program phases

1. Discovery and requirements
2. Risk, threat, and dependency analysis
3. Architecture and decisions
4. Thin end-to-end implementation
5. Secure automation and observability
6. Load, failure, and recovery testing
7. Operations handoff and game day
8. Portfolio publication and redaction review

## Exit criteria

Independent reviewers can reproduce the build, operate it, observe it, recover it, challenge its assumptions, and understand residual risks.

