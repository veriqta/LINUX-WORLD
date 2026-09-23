# SELinux

This section covers label-based mandatory access control. It protects process domains, object types and policy decisions against unconfined execution, incorrect labels and overly broad local policy.

> Use these materials only for authorized defensive administration and isolated practice. Preserve recovery access before changing security controls.

## Learning objectives

- Build a threat-informed approach to selinux.
- Understand configuration, effective state and runtime enforcement.
- Apply least privilege without breaking required service behaviour.
- Perform positive, negative, logging, persistence and recovery tests.
- Document exceptions, residual risk and operational ownership.

## Articles

- [SELinux Architecture](SELinux-Architecture.md)
- [Enforcing Permissive and Disabled](Enforcing-Permissive-and-Disabled.md)
- [Labels Types Domains and Contexts](Labels-Types-Domains-and-Contexts.md)
- [File Context Management](File-Context-Management.md)
- [Booleans and Policy Controls](Booleans-and-Policy-Controls.md)
- [Diagnosing AVC Denials](Diagnosing-AVC-Denials.md)
- [Writing Narrow Local Policy](Writing-Narrow-Local-Policy.md)
- [SELinux for Services and Containers](SELinux-for-Services-and-Containers.md)
- [Common SELinux Mistakes](Common-SELinux-Mistakes.md)
- [SELinux Verification](SELinux-Verification.md)

## Completion standard

Completion requires more than reading. Build an isolated lab, preserve the starting state, implement one bounded control, verify allowed and denied behaviour, inspect evidence, perform rollback and explain the remaining risk.
