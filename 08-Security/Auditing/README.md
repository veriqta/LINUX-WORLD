# Auditing

This section covers security-relevant event capture and review. It protects audit rules, records, identity attribution and protected logs against missing events, noisy rules, storage exhaustion and weak retention.

> Use these materials only for authorized defensive administration and isolated practice. Preserve recovery access before changing security controls.

## Learning objectives

- Build a threat-informed approach to auditing.
- Understand configuration, effective state and runtime enforcement.
- Apply least privilege without breaking required service behaviour.
- Perform positive, negative, logging, persistence and recovery tests.
- Document exceptions, residual risk and operational ownership.

## Articles

- [Linux Audit Architecture](Linux-Audit-Architecture.md)
- [auditd Installation and Configuration](auditd-Installation-and-Configuration.md)
- [Audit Rules and Watches](Audit-Rules-and-Watches.md)
- [System Call Auditing](System-Call-Auditing.md)
- [Identity and Privilege Auditing](Identity-and-Privilege-Auditing.md)
- [File and Configuration Auditing](File-and-Configuration-Auditing.md)
- [ausearch aureport and Interpretation](ausearch-aureport-and-Interpretation.md)
- [Audit Log Protection and Forwarding](Audit-Log-Protection-and-Forwarding.md)
- [Performance and Noise Control](Performance-and-Noise-Control.md)
- [Audit Rule Verification](Audit-Rule-Verification.md)
- [Investigation Examples](Investigation-Examples.md)

## Completion standard

Completion requires more than reading. Build an isolated lab, preserve the starting state, implement one bounded control, verify allowed and denied behaviour, inspect evidence, perform rollback and explain the remaining risk.
