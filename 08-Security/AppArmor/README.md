# AppArmor

This section covers path-based mandatory access control. It protects application profiles, abstractions and mediated resources against unconfined applications, broad rules and ignored denials.

> Use these materials only for authorized defensive administration and isolated practice. Preserve recovery access before changing security controls.

## Learning objectives

- Build a threat-informed approach to apparmor.
- Understand configuration, effective state and runtime enforcement.
- Apply least privilege without breaking required service behaviour.
- Perform positive, negative, logging, persistence and recovery tests.
- Document exceptions, residual risk and operational ownership.

## Articles

- [AppArmor Architecture](AppArmor-Architecture.md)
- [Enforce Complain and Unconfined Modes](Enforce-Complain-and-Unconfined-Modes.md)
- [Profiles Paths and Abstractions](Profiles-Paths-and-Abstractions.md)
- [Creating and Updating Profiles](Creating-and-Updating-Profiles.md)
- [Diagnosing AppArmor Denials](Diagnosing-AppArmor-Denials.md)
- [AppArmor for Services and Containers](AppArmor-for-Services-and-Containers.md)
- [Common AppArmor Mistakes](Common-AppArmor-Mistakes.md)
- [AppArmor Verification](AppArmor-Verification.md)

## Completion standard

Completion requires more than reading. Build an isolated lab, preserve the starting state, implement one bounded control, verify allowed and denied behaviour, inspect evidence, perform rollback and explain the remaining risk.
