# Mid-Level Failure Injection Labs

Own the plan and outcome, investigate across components, make bounded decisions, automate carefully and prove recovery.

> Use only an isolated lab system that is owned or explicitly authorized. Never run destructive exercises on a personal workstation, shared server or production environment.

## Lab catalog

| Lab ID | Lab | Domain | Time | Completion outcome |
| --- | --- | --- | ---: | --- |
| FI-ML-INODE-001 | Inode Exhaustion with Free Disk Space | Storage | 150 min | Recognize inode pressure and recover safely |
| FI-ML-MOUNT-002 | Persistent Mount Blocks Boot Progress | Boot | 180 min | Recover through console and correct persistence |
| FI-ML-FW-003 | Firewall Rule Blocks a Required Dependency | Networking | 150 min | Trace flow and apply a narrow policy fix |
| FI-ML-TIME-004 | Clock Drift Breaks Authentication | Time and identity | 150 min | Correlate time, certificates and authentication |
| FI-ML-MEM-005 | Memory Pressure Causes Service Instability | Performance | 180 min | Use pressure evidence and bounded mitigation |

## Completion rule

A lab is complete only when the required state, negative tests, persistence where applicable, security controls, reset and evidence have been verified. Record the result in the [Progress Tracker](../../Progress-Tracker.md).

## Standard lab contents

Implementations for these stable Lab IDs must include the brief, objectives, prerequisites, environment setup, starting state, guide, hints, verification, troubleshooting, cleanup, knowledge check, reflection, guarded scripts, acceptance tests and topology described in [Lab Standards](../../Lab-Standards.md).
