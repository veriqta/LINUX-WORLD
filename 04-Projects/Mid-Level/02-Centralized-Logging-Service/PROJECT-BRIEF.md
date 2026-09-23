# Centralized Logging Service: Project Brief

## Problem

Collect Linux and application logs from multiple lab hosts into a central service with parsing, retention, search, access control, and delivery monitoring.

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

Encrypt transport; authenticate senders; restrict readers; redact sensitive fields; protect archives.

## Failure scope

- Collector unavailable
- Network partition
- Queue growth
- Malformed event
- Clock skew
- Duplicate delivery
- And storage pressure.

## Deliverables

- Collector and client configuration
- Schema
- Transport security
- Dashboards or queries
- Retention policy
- Backlog test
- And recovery guide

## Milestones

1. Requirements and threat model
2. Architecture and decision records
3. Minimum integrated path
4. Security and identity controls
5. Observability and capacity
6. Failure injection and recovery
7. Upgrade and rollback
8. Independent rebuild and final review

