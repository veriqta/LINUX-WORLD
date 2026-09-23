# Caching DNS Resolver: Project Brief

## Problem

Deploy a local caching resolver for lab clients with forwarding, access controls, DNSSEC validation where supported, observability, and failure recovery.

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

No open recursion; restrict control socket; patch regularly; minimize query logging; validate trusted time.

## Failure scope

- Forwarder failure
- Stale cache
- TCP fallback
- Blocked port 53
- Invalid DNSSEC
- Large response
- And resolver overload.

## Deliverables

- Resolver configuration
- Client setup
- Allowed network model
- Query tests
- Cache evidence
- Metrics
- And runbook.

## Milestones

1. Requirements and threat model
2. Architecture and decision records
3. Minimum integrated path
4. Security and identity controls
5. Observability and capacity
6. Failure injection and recovery
7. Upgrade and rollback
8. Independent rebuild and final review

