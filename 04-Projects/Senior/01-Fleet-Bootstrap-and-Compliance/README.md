# Fleet Bootstrap and Compliance

## Project summary

Design a controlled bootstrap system that enrolls Linux hosts, establishes identity, applies a versioned baseline, reports compliance, and supports safe exception handling.

## Level

Senior. This project requires system-wide reasoning, explicit objectives, governance, staged change, failure containment, measurable recovery, and defensible trade-offs.

## Engineering areas

- Fleet enrollment
- Configuration policy
- Identity
- Compliance evidence
- Staged rollout

## Deliverables

- Reference architecture
- Enrollment workflow
- Policy controls
- Signed inventory
- Compliance report
- Exception process
- Rollback
- And recovery tests

## Documents

- [Project Brief](PROJECT-BRIEF.md)
- [Implementation Guide](IMPLEMENTATION-GUIDE.md)
- [Acceptance Tests](ACCEPTANCE-TESTS.md)
- [Operations Runbook](OPERATIONS-RUNBOOK.md)
- [Portfolio Notes](PORTFOLIO-NOTES.md)

## Review standard

+## Executable senior-engineering files

- [Architecture](ARCHITECTURE.md)
- [Prerequisites](PREREQUISITES.md)
- [Environment Setup](ENVIRONMENT-SETUP.md)
- [Implementation Guide](STEP-BY-STEP-GUIDE.md)
- [Production Requirements](PRODUCTION-REQUIREMENTS.md)
- [Game-Day Guide](GAME-DAY-GUIDE.md)
- [Troubleshooting](TROUBLESHOOTING.md)
- [Cleanup and Decommissioning](CLEANUP.md)
- [Interview Questions](INTERVIEW-QUESTIONS.md)
- [Automation](scripts/)
- [Configuration](config/)
- [Tests](tests/)
- [Reference Implementation](solutions/)
- [Decision Records](adrs/)
- [Game-Day Records](game-days/)
- [Architecture Diagram](assets/architecture-diagram.md)



The design must make failure domains, control authority, trust, state, capacity, observability, rollback, and recovery explicit. Claims require measured evidence.
