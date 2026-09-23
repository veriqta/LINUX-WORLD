# Linux Projects

A public collection of practical Linux engineering projects from foundational administration through production architecture.

The projects require readers to build, test, operate, troubleshoot, document, and explain working systems. They are not command-copying exercises.

## Project coverage

- Linux system administration
- Bash and Python automation
- Linux networking and service connectivity
- Linux security and access control
- Linux systems used in DevOps and CI/CD
- Linux hosts in cloud infrastructure
- Linux container hosts and runtime operations
- Linux reliability, monitoring, and observability
- Linux incident response and recovery
- Production-style Linux capstones

Cloud, container, CI/CD, and SRE projects in this section focus on their Linux foundations. Dedicated repository sections provide deeper specialization without duplicating these projects.

## Project levels

| Level | Primary focus | Expected independence |
| --- | --- | --- |
| [Junior](Junior/) | Correct single-host administration, scripting, services, access, backups, and monitoring | Follow requirements, verify each change, and document decisions |
| [Mid-Level](Mid-Level/) | Multi-service integration, automation, reliability, security, capacity, and recovery | Design components, compare alternatives, test failure, and write operations guidance |
| [Senior](Senior/) | Fleet design, platform controls, failure containment, observability, governance, and migration | Make risk-based decisions, define objectives, control blast radius, and justify trade-offs |
| [Portfolio Capstones](Portfolio-Capstones/) | End-to-end systems combining architecture, implementation, operations, security, and incident readiness | Own the complete lifecycle and present evidence to technical reviewers |

## Implementation status

- Junior projects are fully guided and executable. They include commands, scripts, configuration, expected output, tests, controlled failures, solutions, cleanup, and portfolio preparation.
- Mid-Level projects are executable and partially guided. They include runnable reference implementations, configuration, tests, controlled failures, recovery, cleanup, and portfolio preparation while leaving architecture and operational decisions to the learner.
- Senior projects are executable and decision-driven. They include reference automation, production requirements, architecture decisions, load checks, integrity controls, bounded failure exercises, game-day guidance, recovery verification, decommissioning, and portfolio preparation.
- Portfolio Capstones are executable end-to-end integration projects. They include milestone plans, component contracts, security reviews, SLO and capacity plans, integrated automation, deployment, load checks, game days, recovery tests, independent review, demonstration, and portfolio presentation.

## What every project must prove

Every completed project should include:

- A clear problem statement and scope
- Architecture and data-flow explanation
- Reproducible implementation steps
- Configuration and automation stored as code
- Security model and least-privilege decisions
- Functional and negative tests
- Failure injection and recovery evidence
- Monitoring, logs, and health checks
- Backup, rollback, and cleanup procedures
- An operations runbook
- A decision log and known limitations
- Sanitized portfolio evidence

## Standard project structure

Each project contains:

| File | Purpose |
| --- | --- |
| `README.md` | Public overview, learning outcomes, scope, and navigation |
| `PROJECT-BRIEF.md` | Requirements, constraints, deliverables, and milestones |
| `IMPLEMENTATION-GUIDE.md` | Architecture-first build guidance without hiding design decisions |
| `ACCEPTANCE-TESTS.md` | Functional, security, failure, recovery, and cleanup tests |
| `OPERATIONS-RUNBOOK.md` | Deployment, health checks, common failures, rollback, backup, and maintenance |
| `PORTFOLIO-NOTES.md` | Evidence checklist, presentation structure, interview discussion, and redaction |

Advanced projects also use architecture documents, threat models, service objectives, backup and recovery plans, decision records, failure exercises, postmortems, evidence registers, and formal assessments. Junior projects add a fully guided build and project-specific command explanations.

## Recommended workflow

1. Select a project at the appropriate level.
2. Read the complete brief before building.
3. Record assumptions and environment details.
4. Draw the proposed architecture and trust boundaries.
5. Define success, failure, rollback, and cleanup before implementation.
6. Build in small, reviewable stages.
7. Run acceptance tests and preserve sanitized evidence.
8. Inject controlled failures only in a disposable lab.
9. Write the runbook as if another engineer will operate the system.
10. Rebuild from the documentation to prove reproducibility.

## Project status standard

| Status | Meaning |
| --- | --- |
| Planned | Scope and requirements are written |
| In progress | Implementation has begun but acceptance criteria are incomplete |
| Functional | Primary use case works |
| Tested | Functional, negative, security, failure, and recovery tests pass |
| Documented | Architecture, decisions, runbook, cleanup, and evidence are complete |
| Portfolio ready | Public material is sanitized, reproducible, and independently understandable |

## Assessment model

| Area | Weight |
| --- | ---: |
| Correctness and reproducibility | 25% |
| Troubleshooting and verification | 20% |
| Security and least privilege | 15% |
| Reliability, rollback, and recovery | 15% |
| Automation and maintainability | 10% |
| Documentation and communication | 10% |
| Cleanup and cost awareness | 5% |

## Safety and ethics

- Use systems you own or are authorized to administer.
- Run destructive and failure-injection tests only in disposable environments.
- Never publish credentials, keys, tokens, private addresses, personal data, customer data, or unrestricted production logs.
- Use test data, controlled identities, and explicit cleanup.
- Treat public configuration as potentially reusable by an attacker. Remove environment-specific secrets and sensitive topology.

## Templates

The [Project Templates](Templates/) section is a complete public authoring kit for new Linux World projects. It includes:

- Junior, Mid-Level, Senior, and Capstone profile standards
- 22 documentation templates
- Safe starter configuration and Bash script skeletons
- Functional, security, and failure-test skeletons
- Evidence, solution, ADR, and architecture starters
- A project scaffold generator
- An automated structural validator

The templates are for creating new projects. Learners completing an existing project should use that project's own documentation and scripts.

## Related sections

- [Beginner to Advanced](../01-Beginner-to-Advanced/) teaches the core concepts.
- [Commands and Cheat Sheets](../02-Commands-and-Cheat-Sheets/) provides command references.
- [Troubleshooting](../03-Troubleshooting/) provides investigation methods and failure labs.
- [Labs](../07-Labs/) provides additional guided practice.
