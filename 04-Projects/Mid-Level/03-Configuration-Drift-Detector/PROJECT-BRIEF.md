# Configuration Drift Detector: Project Brief

## Problem

Create a system that records approved file state and detects unauthorized or accidental changes across several Linux hosts.

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

Protect baseline and signing material; restrict collector privileges; distinguish secrets from safe metadata.

## Failure scope

- Legitimate change
- Deleted file
- New file
- Mode change
- Symlink change
- Package replacement
- And unreachable host.

## Deliverables

- Baseline manifest
- Collector
- Comparison engine
- Exclusions
- Alert output
- Tests
- And investigation runbook

## Milestones

1. Requirements and threat model
2. Architecture and decision records
3. Minimum integrated path
4. Security and identity controls
5. Observability and capacity
6. Failure injection and recovery
7. Upgrade and rollback
8. Independent rebuild and final review

