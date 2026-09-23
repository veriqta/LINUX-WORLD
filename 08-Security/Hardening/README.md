# Hardening

This section covers attack-surface reduction with tested operational controls. It protects boot integrity, services, packages, filesystems and logs against unsafe defaults, unused components and configuration drift.

> Use these materials only for authorized defensive administration and isolated practice. Preserve recovery access before changing security controls.

## Learning objectives

- Build a threat-informed approach to hardening.
- Understand configuration, effective state and runtime enforcement.
- Apply least privilege without breaking required service behaviour.
- Perform positive, negative, logging, persistence and recovery tests.
- Document exceptions, residual risk and operational ownership.

## Articles

- [Baseline Hardening Workflow](Baseline-Hardening-Workflow.md)
- [Minimal Installation and Attack Surface](Minimal-Installation-and-Attack-Surface.md)
- [Filesystem and Mount Hardening](Filesystem-and-Mount-Hardening.md)
- [Kernel and Sysctl Hardening](Kernel-and-Sysctl-Hardening.md)
- [Boot and Bootloader Security](Boot-and-Bootloader-Security.md)
- [Service and Systemd Hardening](Service-and-Systemd-Hardening.md)
- [Package and Repository Hardening](Package-and-Repository-Hardening.md)
- [Time Synchronization Security](Time-Synchronization-Security.md)
- [Logging and Log Protection](Logging-and-Log-Protection.md)
- [Endpoint Hardening Checklist](Endpoint-Hardening-Checklist.md)
- [Hardening Verification](Hardening-Verification.md)

## Completion standard

Completion requires more than reading. Build an isolated lab, preserve the starting state, implement one bounded control, verify allowed and denied behaviour, inspect evidence, perform rollback and explain the remaining risk.
