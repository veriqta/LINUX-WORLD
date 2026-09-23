# {{PROJECT_NAME}}

{{ONE_SENTENCE_PUBLIC_DESCRIPTION}}

> **Level:** {{LEVEL}} · **Time:** {{ESTIMATE}} · **Environment:** {{SUPPORTED_LAB}} · **Risk:** {{RISK}}

## What you will build

Describe the working system and the evidence produced. Include a compact architecture diagram when relationships matter.

## What you will learn

- {{OUTCOME_1}}
- {{OUTCOME_2}}
- {{OUTCOME_3}}

## Before you begin

Read [Prerequisites](PREREQUISITES.md), [Environment Setup](ENVIRONMENT-SETUP.md), and the repository lab safety guidance. Use only systems you own or are authorized to administer.

## Project map

| Resource | Purpose |
| --- | --- |
| [Project Brief](PROJECT-BRIEF.md) | Requirements and definition of done |
| [Architecture](ARCHITECTURE.md) | Components, flows, boundaries, and decisions |
| [Implementation](IMPLEMENTATION-GUIDE.md) | Build and verification stages |
| [Troubleshooting](TROUBLESHOOTING.md) | Diagnosis and recovery |
| [Acceptance Tests](ACCEPTANCE-TESTS.md) | Proof that requirements are met |
| [Operations Runbook](OPERATIONS-RUNBOOK.md) | Safe ongoing operation |
| [Cleanup](CLEANUP.md) | Complete removal and verification |
| [Portfolio Notes](PORTFOLIO-NOTES.md) | Evidence and presentation guidance |

## Quick start

```bash
cp config/environment.example config/environment.conf
editor config/environment.conf
sudo ./scripts/install.sh
sudo ./scripts/configure.sh
./scripts/verify.sh
./scripts/test.sh
```

Replace this example with the tested project workflow and explain required privileges.

## Completion standard

The project rebuilds cleanly, all mandatory tests pass, failure and recovery are demonstrated, cleanup is verified, and public evidence contains no secrets.

## License

This project is covered by the Linux World repository license.
