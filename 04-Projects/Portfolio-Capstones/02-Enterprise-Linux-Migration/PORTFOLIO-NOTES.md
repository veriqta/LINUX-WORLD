# Enterprise Linux Migration: Capstone Portfolio Notes

## Headline

Plan and execute a lab migration of a legacy Linux service to a supported target distribution while preserving data, identity, network behavior, security controls, monitoring, and rollback.

## Portfolio package

- One-page executive summary
- Architecture and trust-boundary diagrams
- Requirements and quality targets
- Decision records with alternatives
- Sanitized automation and configuration
- Threat model and access-test evidence
- SLO, dashboard, alert, and capacity evidence
- Progressive delivery and rollback demonstration
- Failure game-day timeline
- Recovery objective results
- Operations handoff evidence
- Residual-risk and limitation register

## Demonstration sequence

1. Explain the problem and users.
2. Walk through architecture and trust.
3. Deploy or show reproducibility.
4. Complete a user journey.
5. Show telemetry and objectives.
6. Inject a controlled failure.
7. Mitigate, recover, and verify.
8. Show rollback, backup, or restore.
9. Explain trade-offs and production gaps.
10. Prove cleanup or decommissioning.

## Interview defense

Be prepared to answer why each component exists, what fails first at scale, how blast radius is bounded, where state lives, how access is revoked, how bad change is stopped, how data is recovered, and which risks remain.

## Publication safety

Use synthetic data and topology. Remove secrets, keys, tokens, internal names, real addresses, customer data, vulnerabilities, audit evidence, and details that expose a live environment.

