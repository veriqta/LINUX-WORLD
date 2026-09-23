# Highly Available Reverse Proxy: Project Brief

## Problem

Build two Linux application nodes behind a reverse proxy with health checks, controlled failover, TLS, logs, and maintenance procedures.

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

Separate administration and service traffic; protect keys; allow only required ports; validate headers and client identity handling.

## Failure scope

- Backend loss
- Proxy restart
- Unhealthy-but-listening backend
- TLS error
- Slow backend
- Log growth
- And uneven load.

## Deliverables

- Network diagram
- Proxy configuration
- Two backends
- Certificate plan
- Health checks
- Failure tests
- Metrics
- And runbook

## Milestones

1. Requirements and threat model
2. Architecture and decision records
3. Minimum integrated path
4. Security and identity controls
5. Observability and capacity
6. Failure injection and recovery
7. Upgrade and rollback
8. Independent rebuild and final review

