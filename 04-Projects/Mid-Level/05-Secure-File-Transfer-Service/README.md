# Secure File Transfer Service

## Project summary

Provide a controlled SFTP-only service with isolated directories, quotas, key lifecycle, audit logs, and tested onboarding and offboarding.

## Level

Mid-Level. This project requires integration across several Linux layers, competing design options, automation, failure testing, and operational ownership.

## Skills

- OpenSSH Match rules
- Chroot design
- Quotas
- Keys
- Auditing

## Deliverables

- Threat model
- Account automation
- Directory layout
- Sshd policy
- Quota controls
- Access tests
- Audit and recovery guide.

## Documents

- [Project Brief](PROJECT-BRIEF.md)
- [Implementation Guide](IMPLEMENTATION-GUIDE.md)
- [Acceptance Tests](ACCEPTANCE-TESTS.md)
- [Operations Runbook](OPERATIONS-RUNBOOK.md)
- [Portfolio Notes](PORTFOLIO-NOTES.md)

## Completion standard

+## Executable learning files

- [Architecture](ARCHITECTURE.md)
- [Prerequisites](PREREQUISITES.md)
- [Environment Setup](ENVIRONMENT-SETUP.md)
- [Step-by-Step Guide](STEP-BY-STEP-GUIDE.md)
- [Commands Explained](COMMANDS-EXPLAINED.md)
- [Troubleshooting](TROUBLESHOOTING.md)
- [Cleanup](CLEANUP.md)
- [Interview Questions](INTERVIEW-QUESTIONS.md)
- [Scripts](scripts/)
- [Configuration](config/)
- [Examples](examples/)
- [Tests](tests/)
- [Reference Implementation](solutions/)
- [Architecture Diagram](assets/architecture-diagram.md)



Demonstrate reproducibility, least privilege, controlled deployment, failure containment, recovery, observability, and complete cleanup across every participating host.
