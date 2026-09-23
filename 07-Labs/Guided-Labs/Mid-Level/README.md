# Mid-Level Guided Labs

Own the plan and outcome, investigate across components, make bounded decisions, automate carefully and prove recovery.

> Use only an isolated lab system that is owned or explicitly authorized. Never run destructive exercises on a personal workstation, shared server or production environment.

## Lab catalog

| Lab ID | Lab | Domain | Time | Completion outcome |
| --- | --- | --- | ---: | --- |
| GL-ML-SVC-001 | Build and Harden a Custom systemd Unit | Services | 150 min | Create a dedicated identity, hardened unit and health check |
| GL-ML-NET-002 | Build an Isolated Routed Network Lab | Networking | 180 min | Use namespaces, routes and policy controls safely |
| GL-ML-STO-003 | Create and Extend an LVM Stack | Storage | 180 min | Manage PV, VG, LV, filesystem growth and recovery |
| GL-ML-SEC-004 | Enforce and Diagnose SELinux or AppArmor | Security | 180 min | Interpret denial evidence and create a narrow correction |
| GL-ML-AUT-005 | Create an Idempotent Administration Tool | Automation | 180 min | Design state checks, dry-run and repeatable execution |
| GL-ML-OBS-006 | Build a Host Monitoring Baseline | Observability | 150 min | Measure resource signals and define actionable thresholds |
| GL-ML-SSH-007 | Operate a Hardened SSH Service | Security | 150 min | Use keys, restricted policy, safe reload and access tests |
| GL-ML-REC-008 | Perform a Measured Restore Test | Recovery | 180 min | Measure RPO, RTO, integrity and permissions |

## Completion rule

A lab is complete only when the required state, negative tests, persistence where applicable, security controls, reset and evidence have been verified. Record the result in the [Progress Tracker](../../Progress-Tracker.md).

## Standard lab contents

Implementations for these stable Lab IDs must include the brief, objectives, prerequisites, environment setup, starting state, guide, hints, verification, troubleshooting, cleanup, knowledge check, reflection, guarded scripts, acceptance tests and topology described in [Lab Standards](../../Lab-Standards.md).
