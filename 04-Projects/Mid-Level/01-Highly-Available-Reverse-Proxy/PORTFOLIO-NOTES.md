# Highly Available Reverse Proxy: Portfolio Notes

## Portfolio summary

Build two Linux application nodes behind a reverse proxy with health checks, controlled failover, TLS, logs, and maintenance procedures.

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

Be ready to explain how the system behaves during Backend loss, proxy restart, unhealthy-but-listening backend, TLS error, slow backend, log growth, and uneven load.. Distinguish mitigation from root-cause correction.

## Production gap

State honestly what the lab does not prove, including scale, geographic redundancy, compliance, long-duration reliability, hardware diversity, vendor behavior, and real user traffic.

