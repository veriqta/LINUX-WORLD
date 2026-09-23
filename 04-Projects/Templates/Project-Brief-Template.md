# {{PROJECT_NAME}}: Project Brief

| Field | Value |
| --- | --- |
| Level | {{JUNIOR_MID_LEVEL_SENIOR_CAPSTONE}} |
| Estimated time | {{HOURS_OR_DAYS}} |
| Primary role | {{ROLE}} |
| Supported lab distributions | {{DISTRIBUTIONS_AND_VERSIONS}} |
| Risk level | {{LOW_MEDIUM_HIGH_IN_DISPOSABLE_LAB}} |
| Last validated | {{YYYY-MM-DD}} |

## Scenario and mission

Describe the organization, users, current problem, business or operational consequence, and one measurable sentence stating what the learner must design, implement, test, operate, and explain.

## Learning outcomes

- {{MEASURABLE_OUTCOME_1}}
- {{MEASURABLE_OUTCOME_2}}
- diagnose {{FAILURE_CLASS}} using {{EVIDENCE_SOURCE}};
- recover the system within {{RECOVERY_TARGET}}.

## Requirements

| ID | Type | Requirement | Verification |
| --- | --- | --- | --- |
| FR-01 | Functional | {{PRIMARY_BEHAVIOR}} | {{TEST_ID}} |
| SR-01 | Security | Apply least privilege to {{IDENTITY}} | {{SECURITY_TEST}} |
| RR-01 | Reliability | Detect {{FAILURE}} within {{TIME}} | {{FAILURE_TEST}} |
| RR-02 | Recovery | Restore within {{RTO}} and {{RPO}} | {{RECOVERY_TEST}} |

## Scope

### Included

- {{IN_SCOPE_ITEM}}
- implementation as code, verification, failure testing, recovery, cleanup, and documentation.

### Excluded

- {{OUT_OF_SCOPE_ITEM}}
- real credentials, customer data, and unauthorized systems.

## Constraints and assumptions

- {{CONSTRAINT_OR_ASSUMPTION}}
- The learner uses an isolated, disposable lab.
- Public exposure is disabled unless explicitly secured and required.

## Deliverables

- working automation and configuration;
- architecture and threat model;
- passing acceptance tests;
- operations and recovery documentation;
- sanitized evidence register and portfolio summary.

## Milestones

| Milestone | Exit condition |
| --- | --- |
| Design | Architecture, risks, dependencies, and rollback reviewed |
| Build | Primary workflow functions in a clean lab |
| Verify | Functional and security tests pass |
| Resilience | Failure, rollback, and recovery tests pass |
| Present | Documentation and sanitized evidence are complete |

## Definition of done

A clean environment can be built from the instructions, every mandatory test passes, cleanup succeeds, no secret is exposed, and the learner can explain the decisions without reading a script.
