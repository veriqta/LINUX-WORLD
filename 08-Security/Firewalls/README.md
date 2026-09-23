# Firewalls

This section covers host packet-filter policy and controlled service exposure. It protects management paths, service ports and network boundaries against unintended exposure, bypass, asymmetric policy and administrator lockout.

> Use these materials only for authorized defensive administration and isolated practice. Preserve recovery access before changing security controls.

## Learning objectives

- Build a threat-informed approach to firewalls.
- Understand configuration, effective state and runtime enforcement.
- Apply least privilege without breaking required service behaviour.
- Perform positive, negative, logging, persistence and recovery tests.
- Document exceptions, residual risk and operational ownership.

## Articles

- [Linux Packet Filtering Fundamentals](Linux-Packet-Filtering-Fundamentals.md)
- [nftables](nftables.md)
- [firewalld](firewalld.md)
- [UFW](UFW.md)
- [Host Firewall Design](Host-Firewall-Design.md)
- [Ingress Egress and Default Deny](Ingress-Egress-and-Default-Deny.md)
- [Stateful Filtering and Connection Tracking](Stateful-Filtering-and-Connection-Tracking.md)
- [Network Zones and Service Exposure](Network-Zones-and-Service-Exposure.md)
- [Firewall Logging and Testing](Firewall-Logging-and-Testing.md)
- [IPv6 Firewall Security](IPv6-Firewall-Security.md)
- [Safe Firewall Change and Recovery](Safe-Firewall-Change-and-Recovery.md)

## Completion standard

Completion requires more than reading. Build an isolated lab, preserve the starting state, implement one bounded control, verify allowed and denied behaviour, inspect evidence, perform rollback and explain the remaining risk.
