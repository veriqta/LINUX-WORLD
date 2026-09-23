# Incident Declaration Template

Use this template to create a consistent, reviewable production record. Remove instructional prompts before approval. Do not include passwords, tokens, private keys, customer data, or unredacted sensitive logs.

## Document control

| Field | Value |
|---|---|
| Record ID | [unique identifier] |
| Status | Draft, In Review, Approved, Active, Closed, or Retired |
| Owner | [named role or team] |
| Reviewer | [independent reviewer] |
| Created | [UTC timestamp] |
| Last reviewed | [UTC timestamp] |
| Next review | [date or triggering event] |
| Classification | Public, Internal, Confidential, or Restricted |

## Purpose and outcome

- Problem or operational need: [describe]
- Intended outcome: [measurable result]
- Systems and services: [identify]
- Environment: [lab, development, staging, production]
- Out of scope: [state exclusions]

## Ownership and communication

| Responsibility | Named role | Contact or channel | Escalation condition |
|---|---|---|---|
| Accountable owner | [role] | [approved channel] | [condition] |
| Operator | [role] | [approved channel] | [condition] |
| Reviewer or approver | [role] | [approved channel] | [condition] |
| Stakeholder | [role] | [approved channel] | [condition] |

## Risk and safety

- Criticality or severity: [value and reason]
- Expected blast radius: [users, hosts, regions, or data]
- Required authorization: [reference]
- Preconditions: [list]
- Stop conditions: [list]
- Rollback or recovery trigger: [measurable condition]
- Escalation trigger: [measurable condition]

## Current state and evidence

| UTC time | Source | Observation | Evidence link | Interpretation |
|---|---|---|---|---|
| [time] | [system] | [fact] | [safe location] | [meaning] |

## Plan or procedure

| Step | Action | Expected result | Verification | Failure response | Owner |
|---:|---|---|---|---|---|
| 1 | [action] | [result] | [check] | [stop, rollback, or escalate] | [role] |
| 2 | [action] | [result] | [check] | [stop, rollback, or escalate] | [role] |

## Decision log

| UTC time | Decision | Evidence and alternatives | Decision owner | Consequence |
|---|---|---|---|---|
| [time] | [decision] | [facts and rejected options] | [role] | [effect] |

## Validation

- Technical checks: [commands, queries, or tests]
- User-path checks: [transaction or synthetic test]
- Security checks: [access and exposure]
- Monitoring checks: [signals and alerts]
- Data checks: [completeness and consistency]
- Result: Pass, Conditional Pass, or Fail

## Closure and follow-up

- Final state: [describe]
- Remaining risk: [describe]
- Follow-up action: [specific action]
- Owner and due date: [owner, date]
- Review evidence: [link]
- Lessons: [what should change]

## Quality gate

- [ ] Required fields are complete.
- [ ] Facts are separated from assumptions.
- [ ] UTC timestamps and approved identifiers are used.
- [ ] Evidence is accessible to authorized reviewers.
- [ ] Secrets and sensitive data are absent or redacted.
- [ ] Verification covers service behavior, not only command success.
- [ ] Owners and due dates are explicit.
- [ ] The record provides completed required fields, links to evidence, owner, timestamps, decision, and review date.
