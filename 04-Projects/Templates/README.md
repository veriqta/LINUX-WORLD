# Linux World Project Templates

This directory is the public authoring kit for building consistent, executable Linux World projects. It is intended for maintainers, contributors, instructors, and learners creating an original project.

The templates prevent a project from becoming only a list of commands. A complete project teaches implementation, explains design, verifies results, exercises failure and recovery, and produces honest portfolio evidence.

## Choose a project profile

| Profile | Guidance | Required outcome |
| --- | --- | --- |
| Junior | Exact steps, explained commands, frequent checks, complete solution | A first-time learner can finish without an outside tutorial |
| Mid-Level | Architecture requirements, starter implementation, decision points, reference solution | The learner integrates services and defends operational choices |
| Senior | Scenario, constraints, objectives, risks, game days, reference architecture | The learner owns design, failure containment, and trade-offs |
| Capstone | Milestones, component contracts, review gates, demonstrations, evidence | The learner proves an end-to-end production-style system |

Start with the [Project Profile Matrix](Project-Profile-Matrix.md), then copy the files required for the selected profile.

## Documentation templates

| Template | Purpose |
| --- | --- |
| [Public Project README](Project-README-Template.md) | Public landing page and navigation |
| [Project Brief](Project-Brief-Template.md) | Problem, requirements, scope, constraints, and deliverables |
| [Prerequisites](Prerequisites-Template.md) | Knowledge, resources, privileges, time, and safety checks |
| [Environment Setup](Environment-Setup-Template.md) | Reproducible lab creation and validation |
| [Architecture](Architecture-Template.md) | Components, flows, trust boundaries, assumptions, and diagrams |
| [Threat Model](Threat-Model-Template.md) | Assets, threats, controls, residual risk, and verification |
| [Step-by-Step Guide](Step-by-Step-Guide-Template.md) | Guided learner journey with checkpoints and expected results |
| [Commands Explained](Commands-Explained-Template.md) | Meaning, risk, verification, rollback, and distribution notes |
| [Implementation Guide](Implementation-Guide-Template.md) | Build stages, decisions, changes, and validation |
| [Troubleshooting](Troubleshooting-Template.md) | Symptom-led diagnosis and recovery |
| [Acceptance Tests](Acceptance-Tests-Template.md) | Functional, negative, security, failure, recovery, and cleanup tests |
| [Operations Runbook](Operations-Runbook-Template.md) | Routine operation, alerts, incidents, rollback, and maintenance |
| [Service Objectives](Service-Objectives-Template.md) | SLIs, SLOs, error budgets, capacity, and alerting |
| [Backup and Recovery](Backup-Recovery-Template.md) | Backup scope, restoration, RPO, RTO, and proof |
| [Failure Lab](Failure-Lab-Template.md) | Bounded fault injection, observation, recovery, and learning |
| [Cleanup](Cleanup-Template.md) | Safe removal, verification, retained evidence, and costs |
| [Portfolio Notes](Portfolio-Notes-Template.md) | Sanitized evidence, résumé bullets, demonstrations, and limitations |
| [Interview Questions](Interview-Questions-Template.md) | Explanation, troubleshooting, security, and design discussion |
| [ADR](Architecture-Decision-Record-Template.md) | One durable architecture decision and its consequences |
| [Postmortem](Postmortem-Template.md) | Blameless incident analysis and corrective actions |
| [Evidence Register](Evidence-Register-Template.md) | Traceable proof mapped to requirements |
| [Project Assessment](Project-Assessment-Template.md) | Consistent scoring and reviewer sign-off |

## Runnable starter files

The `starter/` directory provides safe skeletons for configuration, examples, Bash automation, tests, and an architecture diagram. Starter scripts deliberately stop at marked implementation points. They include strict mode, logging, privilege checks, path validation, and predictable exit behavior.

## Author workflow

1. Choose the level using the profile matrix.
2. Copy the required documents and `starter/` directories into a new project folder.
3. Replace every `{{PLACEHOLDER}}`; never publish unresolved placeholders.
4. Implement commands and scripts in a disposable lab.
5. Explain privileged or destructive commands before asking a learner to run them.
6. Add verification after every meaningful change.
7. Test normal, invalid-input, permission, dependency, restart, rollback, and cleanup paths.
8. Record representative output without exposing secrets or personal data.
9. Run `tools/validate-project.sh PATH_TO_PROJECT PROFILE`.
10. Ask another person to rebuild the project using only its public documentation.

## Non-negotiable quality rules

- Commands that change identities, permissions, networking, storage, boot, firewall, or security state must be explained and recoverable.
- Destructive operations must be isolated, explicitly labeled, target-validated, and paired with recovery.
- Examples must use documentation-only addresses and placeholder domains.
- Secrets must never appear in tracked files, output samples, screenshots, or evidence.
- Installation, verification, rollback, and cleanup must be reproducible.
- A project is not portfolio-ready until sanitized evidence supports its claims.

## Licensing

Templates inherit the repository license. Reuse outside the repository is permitted only to the extent allowed by that license.
