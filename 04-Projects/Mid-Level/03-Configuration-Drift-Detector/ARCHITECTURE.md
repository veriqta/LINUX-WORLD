# Configuration Drift Detector: Architecture

## Goal

Create signed or protected baselines and identify content, ownership, permission, link, addition, and deletion drift.

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

- manifests
- checksums
- metadata
- exclusions
- comparison
- scheduling
- alert output

## Failure model

Exercise changed content, missing file, added file, mode drift, symlink drift, and unreachable target. Identify trigger, propagation, user impact, detection, mitigation, recovery, and prevention.

