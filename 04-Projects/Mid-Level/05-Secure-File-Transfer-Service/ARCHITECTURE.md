# Secure File Transfer Service: Architecture

## Goal

Build an SFTP-only service with isolated directories, keys, quotas or capacity controls, audit, onboarding, offboarding, and recovery.

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

- OpenSSH Match rules
- chroot
- identity
- key lifecycle
- filesystem policy
- audit

## Failure model

Exercise bad chroot ownership, expired key, full quota, traversal attempt, disabled account, and reload failure. Identify trigger, propagation, user impact, detection, mitigation, recovery, and prevention.

