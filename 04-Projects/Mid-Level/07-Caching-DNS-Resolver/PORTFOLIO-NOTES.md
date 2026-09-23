# Caching DNS Resolver: Portfolio Notes

## Portfolio summary

Deploy a local caching resolver for lab clients with forwarding, access controls, DNSSEC validation where supported, observability, and failure recovery.

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

Be ready to explain how the system behaves during Forwarder failure, stale cache, TCP fallback, blocked port 53, invalid DNSSEC, large response, and resolver overload.. Distinguish mitigation from root-cause correction.

## Production gap

State honestly what the lab does not prove, including scale, geographic redundancy, compliance, long-duration reliability, hardware diversity, vendor behavior, and real user traffic.

