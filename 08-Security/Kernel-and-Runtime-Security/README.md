# Kernel and Runtime Security

This section covers kernel interfaces and runtime isolation controls. It protects kernel modules, processes, memory, capabilities and system calls against dangerous capabilities, broad syscall access and untrusted modules.

> Use these materials only for authorized defensive administration and isolated practice. Preserve recovery access before changing security controls.

## Learning objectives

- Build a threat-informed approach to kernel and runtime security.
- Understand configuration, effective state and runtime enforcement.
- Apply least privilege without breaking required service behaviour.
- Perform positive, negative, logging, persistence and recovery tests.
- Document exceptions, residual risk and operational ownership.

## Articles

- [Kernel Attack Surface](Kernel-Attack-Surface.md)
- [Linux Capabilities](Linux-Capabilities.md)
- [Seccomp](Seccomp.md)
- [Namespaces and Cgroups Security](Namespaces-and-Cgroups-Security.md)
- [Process and Memory Protection](Process-and-Memory-Protection.md)
- [Kernel Module Security](Kernel-Module-Security.md)
- [eBPF Security Considerations](eBPF-Security-Considerations.md)
- [Core Dumps and Debugging Risk](Core-Dumps-and-Debugging-Risk.md)
- [Runtime Protection Verification](Runtime-Protection-Verification.md)

## Completion standard

Completion requires more than reading. Build an isolated lab, preserve the starting state, implement one bounded control, verify allowed and denied behaviour, inspect evidence, perform rollback and explain the remaining risk.
