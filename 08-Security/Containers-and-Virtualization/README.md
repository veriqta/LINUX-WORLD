# Containers and Virtualization

This section covers workload isolation and shared-kernel risk. It protects images, runtimes, registries, secrets, namespaces and hypervisors against privileged containers, host mounts, image tampering and escape paths.

> Use these materials only for authorized defensive administration and isolated practice. Preserve recovery access before changing security controls.

## Learning objectives

- Build a threat-informed approach to containers and virtualization.
- Understand configuration, effective state and runtime enforcement.
- Apply least privilege without breaking required service behaviour.
- Perform positive, negative, logging, persistence and recovery tests.
- Document exceptions, residual risk and operational ownership.

## Articles

- [Container Threat Model](Container-Threat-Model.md)
- [Rootless Containers](Rootless-Containers.md)
- [Container Capabilities and Seccomp](Container-Capabilities-and-Seccomp.md)
- [Container Images and Registries](Container-Images-and-Registries.md)
- [Container Secrets](Container-Secrets.md)
- [Container Network and Storage Security](Container-Network-and-Storage-Security.md)
- [Runtime and Escape Risk](Runtime-and-Escape-Risk.md)
- [Virtual Machine Isolation](Virtual-Machine-Isolation.md)
- [Container Security Verification](Container-Security-Verification.md)

## Completion standard

Completion requires more than reading. Build an isolated lab, preserve the starting state, implement one bounded control, verify allowed and denied behaviour, inspect evidence, perform rollback and explain the remaining risk.
