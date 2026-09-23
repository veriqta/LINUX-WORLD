# Incident Evidence Collector: Architecture

## Goal

Collect scoped Linux diagnostic evidence with timeouts, modules, redaction, checksums, a protected archive, and an audit manifest.

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

- collection modules
- timeouts
- redaction
- archive integrity
- least privilege
- evidence handling

## Failure model

Exercise hung command, huge log, missing tool, low disk, secret pattern, and partial collection. Identify trigger, propagation, user impact, detection, mitigation, recovery, and prevention.

