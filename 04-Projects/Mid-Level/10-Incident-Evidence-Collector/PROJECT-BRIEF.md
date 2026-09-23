# Incident Evidence Collector: Project Brief

## Problem

Build a controlled tool that collects relevant Linux state for troubleshooting without altering the system or exposing excessive sensitive data.

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

Read-only collection; strict output permissions; bounded commands; minimal data; approved transfer; integrity verification.

## Failure scope

- Hung command
- Huge log
- Missing tool
- Permission denial
- Secret detection
- Partial collection
- And low disk space.

## Deliverables

- Collector
- Module configuration
- Redaction rules
- Manifest
- Checksum
- Encrypted transfer plan
- Tests
- And chain-of-custody notes.

## Milestones

1. Requirements and threat model
2. Architecture and decision records
3. Minimum integrated path
4. Security and identity controls
5. Observability and capacity
6. Failure injection and recovery
7. Upgrade and rollback
8. Independent rebuild and final review

