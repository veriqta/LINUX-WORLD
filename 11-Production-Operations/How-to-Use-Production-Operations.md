# How to Use Production Operations

Use the material as a progression and as an operational reference.

> Production safety: Test procedures in an isolated environment. Confirm the target, authorization, impact, rollback path, and evidence requirements before changing a live system.

## Learning objectives

After completing this resource, readers should be able to:

- Explain how to use production operations in an operational context.
- Apply it to a Linux service without losing ownership, evidence, or rollback control.
- Recognize unsafe assumptions and conditions that require escalation.
- Verify outcomes from both the system and user perspectives.
- Produce a record another qualified operator can review and repeat.

## Core guidance

Start with the foundation files, follow the learning path, practise in labs, use templates to capture evidence, and return to the relevant runbook or playbook during exercises. Never learn by experimenting on production.

## Required practice

- Define a fictional production service and accountable owner.
- Identify its user path, dependencies, criticality, and failure domains.
- Write measurable success, stop, rollback, and escalation conditions.
- Capture evidence with UTC timestamps and safe example data.
- Review the record as a second operator who did not participate.

## Quality questions

1. Can another qualified person repeat the work safely?
2. Are facts, assumptions, decisions, and approvals distinguishable?
3. Does verification prove the user outcome?
4. Is the rollback or recovery path realistic and tested?
5. Are ownership and review dates explicit?

## Next steps

- [Production Operations home](./README.md)
- [Service Ownership](./Service-Ownership/README.md)
- [Operational Readiness](./Operational-Readiness/README.md)
- [Templates](./Templates/README.md)
