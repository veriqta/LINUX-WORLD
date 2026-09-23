# Backup and Recovery Security

This section covers confidential, tamper-resistant and recoverable backups. It protects backup data, keys, catalogs, recovery credentials and restore paths against ransomware deletion, credential compromise, silent corruption and failed restore.

> Use these materials only for authorized defensive administration and isolated practice. Preserve recovery access before changing security controls.

## Learning objectives

- Build a threat-informed approach to backup and recovery security.
- Understand configuration, effective state and runtime enforcement.
- Apply least privilege without breaking required service behaviour.
- Perform positive, negative, logging, persistence and recovery tests.
- Document exceptions, residual risk and operational ownership.

## Articles

- [Backup Threat Model](Backup-Threat-Model.md)
- [Backup Access Control](Backup-Access-Control.md)
- [Encryption and Key Separation](Encryption-and-Key-Separation.md)
- [Immutable and Offline Backups](Immutable-and-Offline-Backups.md)
- [Backup Integrity Verification](Backup-Integrity-Verification.md)
- [Secure Restore Testing](Secure-Restore-Testing.md)
- [Ransomware Recovery Considerations](Ransomware-Recovery-Considerations.md)
- [Recovery Credential Management](Recovery-Credential-Management.md)

## Completion standard

Completion requires more than reading. Build an isolated lab, preserve the starting state, implement one bounded control, verify allowed and denied behaviour, inspect evidence, perform rollback and explain the remaining risk.
