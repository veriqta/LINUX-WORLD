# High-Scale Log Pipeline

## Project summary

Design a multi-stage Linux log pipeline with local buffering, secure forwarding, parsing, routing, backpressure, retention, replay, and tenant controls.

## Level

Senior. This project requires system-wide reasoning, explicit objectives, governance, staged change, failure containment, measurable recovery, and defensible trade-offs.

## Engineering areas

- Agents
- Queues
- Schemas
- Backpressure
- Durability
- Replay
- Retention economics

## Deliverables

- Capacity model
- Pipeline topology
- Schema
- Agent config
- Buffering policy
- Routing
- Storage
- SLOs
- Load and loss tests.

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
