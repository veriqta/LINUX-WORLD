# SSH

This section covers remote administration trust, authentication and channel control. It protects host identity, administrator access and encrypted sessions against credential compromise, host impersonation, forwarding abuse and lockout.

> Use these materials only for authorized defensive administration and isolated practice. Preserve recovery access before changing security controls.

## Learning objectives

- Build a threat-informed approach to ssh.
- Understand configuration, effective state and runtime enforcement.
- Apply least privilege without breaking required service behaviour.
- Perform positive, negative, logging, persistence and recovery tests.
- Document exceptions, residual risk and operational ownership.

## Articles

- [SSH Architecture and Trust](SSH-Architecture-and-Trust.md)
- [Secure Server Configuration](Secure-Server-Configuration.md)
- [SSH Key Lifecycle](SSH-Key-Lifecycle.md)
- [Host Keys and Known Hosts](Host-Keys-and-Known-Hosts.md)
- [Certificate Based SSH](Certificate-Based-SSH.md)
- [Multi Factor Authentication](Multi-Factor-Authentication.md)
- [Bastions Jump Hosts and Proxies](Bastions-Jump-Hosts-and-Proxies.md)
- [Port Forwarding Risk and Control](Port-Forwarding-Risk-and-Control.md)
- [SSH Logging and Detection](SSH-Logging-and-Detection.md)
- [SSH Incident Response](SSH-Incident-Response.md)
- [Safe SSH Change Checklist](Safe-SSH-Change-Checklist.md)

## Completion standard

Completion requires more than reading. Build an isolated lab, preserve the starting state, implement one bounded control, verify allowed and denied behaviour, inspect evidence, perform rollback and explain the remaining risk.
