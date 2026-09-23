# Secure Hosting Platform: Capstone Brief

## Mission

Create a multi-tenant Linux hosting environment with hardened access, service isolation, network policy, resource limits, secret and certificate handling, audit evidence, backup, and incident response.

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

- SSH certificates or controlled keys
- Systemd isolation
- Cgroups
- Firewall
- Filesystem permissions
- Auditing
- Vulnerability management
- And forensics readiness.

## Required failure scenarios

- Tenant escape attempt
- Credential compromise
- Resource exhaustion
- Malicious upload
- Audit loss
- Certificate expiry
- And emergency isolation.

## Deliverables

- Threat model
- Tenant model
- Hardened baseline
- Access platform
- Isolation controls
- Resource governance
- Audit
- Recovery
- And security exercise.

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

