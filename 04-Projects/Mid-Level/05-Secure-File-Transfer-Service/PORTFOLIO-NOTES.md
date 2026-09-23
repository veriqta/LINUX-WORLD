# Secure File Transfer Service: Portfolio Notes

## Portfolio summary

Provide a controlled SFTP-only service with isolated directories, quotas, key lifecycle, audit logs, and tested onboarding and offboarding.

## Required public evidence

- Architecture and trust-boundary diagram
- ADR comparing design options
- Sanitized automation and configuration
- End-to-end test results
- Security control evidence
- Dashboard or structured health output
- Capacity or performance measurement
- Failure injection and recovery timeline
- Backup and restore proof
- Runbook excerpt and cleanup proof

## Technical narrative

Explain the user problem, system boundaries, major decision, failure model, least-privilege design, observability, rollback, and measured result.

## Interview scenarios

Be ready to explain how the system behaves during Bad directory ownership, full quota, expired key, attempted traversal, disabled account, service reload failure, and lost file.. Distinguish mitigation from root-cause correction.

## Production gap

State honestly what the lab does not prove, including scale, geographic redundancy, compliance, long-duration reliability, hardware diversity, vendor behavior, and real user traffic.

