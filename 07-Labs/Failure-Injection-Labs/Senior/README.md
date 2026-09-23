# Senior Failure Injection Labs

Manage uncertainty, blast radius, business impact, technical trade-offs, communication and residual risk.

> Use only an isolated lab system that is owned or explicitly authorized. Never run destructive exercises on a personal workstation, shared server or production environment.

## Lab catalog

| Lab ID | Lab | Domain | Time | Completion outcome |
| --- | --- | --- | ---: | --- |
| FI-SR-CASCADE-001 | Dependency Failure Creates a Retry Storm | Reliability | 300 min | Control amplification and restore stable demand |
| FI-SR-FLEET-002 | Bad Configuration Propagates Across a Fleet | Fleet operations | 300 min | Halt rollout, contain exposure and recover cohorts |
| FI-SR-CERT-003 | Certificate Expiry Breaks Service Communication | Security | 240 min | Restore trust and improve expiry controls |
| FI-SR-BKP-004 | Backup Succeeds but Restore Fails | Recovery | 300 min | Expose false assurance and establish restore proof |
| FI-SR-OBS-005 | Monitoring Failure Hides a Service Incident | Observability | 300 min | Detect blind spots and avoid false recovery |

## Completion rule

A lab is complete only when the required state, negative tests, persistence where applicable, security controls, reset and evidence have been verified. Record the result in the [Progress Tracker](../../Progress-Tracker.md).

## Standard lab contents

Implementations for these stable Lab IDs must include the brief, objectives, prerequisites, environment setup, starting state, guide, hints, verification, troubleshooting, cleanup, knowledge check, reflection, guarded scripts, acceptance tests and topology described in [Lab Standards](../../Lab-Standards.md).
