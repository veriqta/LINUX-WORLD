# Lab Standards

Every published lab must be reproducible, safe, testable, distribution-aware and understandable without private context.

## Required lab package

| File or directory | Requirement |
| --- | --- |
| README.md | Metadata, navigation, scope and completion definition |
| LAB-BRIEF.md | Scenario, required final state, constraints and non-goals |
| LEARNING-OBJECTIVES.md | Measurable skills demonstrated |
| PREREQUISITES.md | Knowledge, prior labs and host requirements |
| ENVIRONMENT-SETUP.md | Reproducible preparation and supported platforms |
| STARTING-STATE.md | Exact initial users, files, services, network and assumptions |
| LAB-GUIDE.md | Instructions appropriate to the lab type |
| COMMANDS-EXPLAINED.md | Required for fully guided beginner work |
| HINTS.md | Graduated hints that do not reveal the answer immediately |
| VERIFICATION.md | Manual checks and machine-checkable acceptance criteria |
| TROUBLESHOOTING.md | Setup and platform problems, not the assessed answer |
| CLEANUP.md | Reversal, resource removal and cleanup verification |
| KNOWLEDGE-CHECK.md | Questions requiring explanation, not memorization |
| REFLECTION.md | Evidence, decisions, errors and next steps |
| scripts/ | Guarded setup, validation, reset and cleanup automation |
| tests/ | Idempotent acceptance checks where practical |
| assets/ | Topology and supporting diagrams |

## Required metadata

Every README must declare a stable Lab ID, title, type, level, domain, estimated duration, environment, required privilege, risk, internet requirement, possible cost, reset support, supported distributions, objectives and prerequisites.

## Writing standard

- Write for the learner, not the repository maintainer.
- Define unfamiliar terms before using them.
- Use exact paths, identities and expected states.
- Explain commands and risky options.
- Show representative output and state that versions may differ.
- Separate observations, interpretations, actions and results.
- State distribution differences instead of assuming one package manager.
- Use documentation domains, private test ranges and synthetic data.
- Avoid hidden prerequisites and unexplained command dumps.

## Automation standard

Setup and cleanup scripts must use strict error handling, validate exact targets, refuse production-like hosts, avoid broad recursive deletion, print intended changes, return meaningful exit codes and be safe to rerun where practical. Validation scripts must be read-only unless a test explicitly declares a reversible mutation.

## Version and lifecycle

Use stable Lab IDs even if titles change. Record lab version and last tested date. Mark a lab as Draft, Ready, Deprecated or Retired. Ready labs require a clean-environment test, reset test, link check, safety review and solution review.
