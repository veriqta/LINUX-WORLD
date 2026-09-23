# Linux Security

A defensive Linux security center for System Administrators, security engineers, DevOps engineers, SREs, platform engineers and incident responders.

This section explains how to protect Linux systems, reduce attack surface, control access, verify enforcement, detect suspicious activity, manage vulnerabilities and respond to incidents without destroying evidence.

> The material is for authorized defensive administration and isolated learning environments. It does not authorize access to systems, accounts, networks or data.

## Start here

1. Read [How to Use the Security Section](How-to-Use-the-Security-Section.md).
2. Follow the [Security Learning Path](Security-Learning-Path.md).
3. Apply the [Security Principles](Security-Principles.md).
4. Create a system model with [Threat Modeling for Linux](Threat-Modeling-for-Linux.md).
5. Use the [Security Assessment Methodology](Security-Assessment-Methodology.md).
6. Observe [Safety and Legal Boundaries](Security-Safety-and-Legal-Boundaries.md).
7. Prove every change with [Security Control Verification](Security-Control-Verification.md).

## Domains

| Domain | Purpose |
| --- | --- |
| [Foundations](Foundations/) | security architecture, assets, identities and trust boundaries |
| [Hardening](Hardening/) | attack-surface reduction with tested operational controls |
| [Users and Access](Users-and-Access/) | identity lifecycle, authentication, authorization and privilege |
| [SSH](SSH/) | remote administration trust, authentication and channel control |
| [Firewalls](Firewalls/) | host packet-filter policy and controlled service exposure |
| [SELinux](SELinux/) | label-based mandatory access control |
| [AppArmor](AppArmor/) | path-based mandatory access control |
| [Auditing](Auditing/) | security-relevant event capture and review |
| [Secrets Keys and Certificates](Secrets-Keys-and-Certificates/) | confidential material and cryptographic trust lifecycle |
| [Vulnerability Management](Vulnerability-Management/) | risk-based discovery, prioritization and remediation |
| [Integrity and Supply Chain](Integrity-and-Supply-Chain/) | software provenance and unauthorized-change detection |
| [Kernel and Runtime Security](Kernel-and-Runtime-Security/) | kernel interfaces and runtime isolation controls |
| [Network and Service Security](Network-and-Service-Security/) | secure service exposure and protected application transport |
| [Containers and Virtualization](Containers-and-Virtualization/) | workload isolation and shared-kernel risk |
| [Detection and Monitoring](Detection-and-Monitoring/) | observable evidence and actionable security detections |
| [Compliance and Baselines](Compliance-and-Baselines/) | risk-based control baselines and defensible evidence |
| [Backup and Recovery Security](Backup-and-Recovery-Security/) | confidential, tamper-resistant and recoverable backups |
| [Security Automation](Security-Automation/) | repeatable controls with safe failure and rollback |
| [Incident Forensics](Incident-Forensics/) | authorized incident response and evidence-preserving investigation |

## Required security workflow

    Asset and business purpose
    -> threat and trust boundary
    -> current-state evidence
    -> least-privilege control
    -> safe implementation
    -> positive and negative testing
    -> logging and monitoring
    -> rollback and recovery
    -> review and continuous improvement

A benchmark score, scanner result or successful command is not proof of security. Controls must be appropriate to the system, enforced at runtime, tested against the threat and supported operationally.
