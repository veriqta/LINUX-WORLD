# Secrets Keys and Certificates

This section covers confidential material and cryptographic trust lifecycle. It protects secrets, private keys, certificates and trust stores against exposure, weak protection, expiry, unauthorized trust and failed revocation.

> Use these materials only for authorized defensive administration and isolated practice. Preserve recovery access before changing security controls.

## Learning objectives

- Build a threat-informed approach to secrets keys and certificates.
- Understand configuration, effective state and runtime enforcement.
- Apply least privilege without breaking required service behaviour.
- Perform positive, negative, logging, persistence and recovery tests.
- Document exceptions, residual risk and operational ownership.

## Articles

- [Secret Classification and Handling](Secret-Classification-and-Handling.md)
- [Secrets in Files Environment and Processes](Secrets-in-Files-Environment-and-Processes.md)
- [Secure Secret Storage](Secure-Secret-Storage.md)
- [Cryptographic Key Lifecycle](Cryptographic-Key-Lifecycle.md)
- [Private Key Protection](Private-Key-Protection.md)
- [Certificate and PKI Fundamentals](Certificate-and-PKI-Fundamentals.md)
- [Creating CSRs and Certificates](Creating-CSRs-and-Certificates.md)
- [Certificate Validation and Trust Stores](Certificate-Validation-and-Trust-Stores.md)
- [Certificate Rotation and Expiry](Certificate-Rotation-and-Expiry.md)
- [Revocation and Compromise Response](Revocation-and-Compromise-Response.md)
- [GPG and File Signing](GPG-and-File-Signing.md)
- [Secret Exposure Response](Secret-Exposure-Response.md)

## Completion standard

Completion requires more than reading. Build an isolated lab, preserve the starting state, implement one bounded control, verify allowed and denied behaviour, inspect evidence, perform rollback and explain the remaining risk.
