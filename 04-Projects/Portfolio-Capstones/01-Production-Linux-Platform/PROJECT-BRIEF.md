# Production Linux Platform: Capstone Brief

## Mission

Design and build a small production-style Linux platform that provisions hosts, deploys a service, manages identity, stores state, exposes observability, performs backups, and survives tested failures.

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

- Host bootstrap
- Network boundaries
- Service management
- Reverse proxy
- Storage
- Logging
- Metrics
- Patching
- And recovery.

## Required failure scenarios

- Host loss
- Bad deployment
- Full filesystem
- Certificate failure
- Dependency outage
- Credential rotation
- And restore to replacement infrastructure.

## Deliverables

- A complete platform blueprint
- Automation repository
- Service deployment
- Security baseline
- Observability
- Backup and recovery
- Incident exercise
- And handoff.

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

