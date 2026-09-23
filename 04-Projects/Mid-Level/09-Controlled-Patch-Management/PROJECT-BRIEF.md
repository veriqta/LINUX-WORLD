# Controlled Patch Management: Project Brief

## Problem

Build a repeatable patch workflow for a small Linux fleet with inventory, risk classification, canary deployment, verification, rollback, and reporting.

## Required environments

Use at least two isolated Linux systems or namespaces when the design has clients, servers, collectors, or failover. Record versions, capacity, topology, trust boundaries, dependencies, and time source.

## Functional requirements

1. Define component ownership and interfaces.
2. Automate repeatable installation and configuration.
3. Validate configuration before activation.
4. Provide health, logs, metrics, and meaningful failure signals.
5. Support controlled upgrade, rollback, backup, restore, and removal.
6. Remain safe under repeat execution.
7. Document normal and degraded operation.
8. Test from the real client path.

## Nonfunctional requirements

- Bounded resource use
- Defined availability and recovery targets
- Deterministic configuration
- Auditable changes
- Capacity headroom
- Documented compatibility
- No single undocumented recovery dependency

## Security

Trusted repositories; signature verification; separation of duties; protected automation credentials; complete audit trail.

## Failure scope

- Repository outage
- Dependency conflict
- Config prompt
- Kernel reboot
- Canary failure
- Application regression
- And partial fleet.

## Deliverables

- Fleet inventory
- Patch policy
- Canary plan
- Automation
- Prechecks
- Postchecks
- Rollback paths
- And compliance report.

## Milestones

1. Requirements and threat model
2. Architecture and decision records
3. Minimum integrated path
4. Security and identity controls
5. Observability and capacity
6. Failure injection and recovery
7. Upgrade and rollback
8. Independent rebuild and final review

