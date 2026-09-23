# Centralized Logging Service: Architecture

## Goal

Forward structured events from multiple simulated hosts to a protected collector with buffering, validation, retention, and search.

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

- event schema
- transport
- local queue
- collector
- retention
- access
- delivery monitoring

## Failure model

Exercise collector loss, malformed event, duplicate event, queue growth, clock skew, and disk pressure. Identify trigger, propagation, user impact, detection, mitigation, recovery, and prevention.

