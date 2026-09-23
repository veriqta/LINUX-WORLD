# Self-Healing Service Platform: Architecture

## Mission

Detect unhealthy Linux services, preserve evidence, enforce restart budgets, shift traffic, avoid remediation loops, and restore safe capacity.

## Required architecture views

- Context and stakeholders
- Control plane and data plane
- State ownership and consistency
- Identity and trust
- Network and failure domains
- Capacity, queues, limits, and backpressure
- Telemetry and detection
- Change, rollback, recovery, and decommissioning

~~~mermaid
flowchart TD
    U["Users and operators"] --> C["Governed control plane"]
    C --> F["Linux fleet or services"]
    F --> S["State and dependencies"]
    F --> T["Telemetry and evidence"]
    T --> G["Health gates and incident response"]
    G --> R["Rollback or recovery"]
~~~

## Failure analysis

Model crash loop, false health failure, dependency outage, split health view, restart-budget exhaustion, controller loss, and partial recovery. For each, state propagation, blast radius, detection, mitigation, data risk, recovery, and prevention.

