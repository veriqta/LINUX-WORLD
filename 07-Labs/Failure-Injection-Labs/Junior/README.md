# Junior Failure Injection Labs

Follow safe procedures, explain each important action, verify expected and denied behaviour, and escalate when scope changes.

> Use only an isolated lab system that is owned or explicitly authorized. Never run destructive exercises on a personal workstation, shared server or production environment.

## Lab catalog

| Lab ID | Lab | Domain | Time | Completion outcome |
| --- | --- | --- | ---: | --- |
| FI-JR-PERM-001 | Service Fails Because of Directory Permissions | Access control | 100 min | Find the denied path component and restore least privilege |
| FI-JR-DISK-002 | Filesystem Reaches Capacity Limit | Storage | 100 min | Identify safe reclamation and verify service recovery |
| FI-JR-SVC-003 | systemd Unit Contains an Invalid Directive | Services | 90 min | Validate syntax, correct and prove persistence |
| FI-JR-PORT-004 | Application Port Is Already in Use | Networking | 90 min | Identify ownership and resolve the conflict safely |
| FI-JR-DNS-005 | Resolver Configuration Breaks Name Lookup | Networking | 100 min | Separate DNS from general connectivity |

## Completion rule

A lab is complete only when the required state, negative tests, persistence where applicable, security controls, reset and evidence have been verified. Record the result in the [Progress Tracker](../../Progress-Tracker.md).

## Standard lab contents

Implementations for these stable Lab IDs must include the brief, objectives, prerequisites, environment setup, starting state, guide, hints, verification, troubleshooting, cleanup, knowledge check, reflection, guarded scripts, acceptance tests and topology described in [Lab Standards](../../Lab-Standards.md).
