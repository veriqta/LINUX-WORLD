# Highly Available Reverse Proxy: Architecture

## Goal

Build two Linux backends behind a health-aware reverse proxy and prove traffic continuity during one backend failure.

## Required views

Document context, components, deployment, data flow, trust boundaries, failure domains, state, credentials, observability, and recovery.

~~~mermaid
flowchart TD
    C["Client or operator"] --> E["Validated entry point"]
    E --> S["Linux service components"]
    S --> D["State or dependency"]
    S --> O["Logs, metrics, and health"]
    O --> R["Detection and recovery"]
~~~

## Engineering areas

- proxy configuration
- backend services
- health checks
- TLS planning
- logs
- failure isolation

## Failure model

Exercise backend loss, unhealthy response, port conflict, proxy restart, and slow backend. Identify trigger, propagation, user impact, detection, mitigation, recovery, and prevention.

