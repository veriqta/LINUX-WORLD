# Basic Incident Notes

Capture a small incident clearly enough for escalation and follow-up.

> **Notebook level:** Junior · **Record status:** Draft / Active / Complete / Superseded

## When to use this notebook

Use this record when the work requires a durable, reviewable account. Link existing tickets, incidents, changes or decisions instead of duplicating their complete contents. Use only authorized systems and sanitize every public example.

## Record metadata

| Field | Entry |
| --- | --- |
| Record ID | |
| Date opened, UTC | |
| Date closed, UTC | |
| Engineer or role | |
| Reviewer | |
| Environment | Lab / Development / Test / Staging / Production |
| Host, service or platform | |
| Ticket, change or incident | |
| Data classification | Public / Internal / Confidential / Restricted |
| Risk level | Low / Medium / High / Critical |
| Status | Draft / Active / Blocked / Complete / Superseded |

## Objective and success criteria

**Purpose:**

**Required final state:**

**How success will be measured:**

**Non-goals:**

**Time or recovery objective:**

## Authorization and safety

- [ ] Exact targets are confirmed.
- [ ] Required approval is recorded.
- [ ] Credentials and sensitive data will not be copied into this notebook.
- [ ] Before state will be preserved.
- [ ] Rollback or recovery is understood.
- [ ] Destructive work is isolated and explicitly approved.
- [ ] Console or alternative access exists when remote access could be affected.

## Context and assumptions

**Expected behavior:**

**Observed behavior or requested change:**

**Affected users or systems:**

**Known constraints:**

**Assumptions requiring validation:**

## Working record

### 1. User-visible symptom and impact

**Current state:**

**Evidence or source:**

**Interpretation:**

**Required action or decision:**

### 2. Detection time and reporter

**Current state:**

**Evidence or source:**

**Interpretation:**

**Required action or decision:**

### 3. Affected and unaffected scope

**Current state:**

**Evidence or source:**

**Interpretation:**

**Required action or decision:**

### 4. Recent changes

**Current state:**

**Evidence or source:**

**Interpretation:**

**Required action or decision:**

### 5. Evidence and hypotheses

**Current state:**

**Evidence or source:**

**Interpretation:**

**Required action or decision:**

### 6. Mitigation, recovery, escalation and owner

**Current state:**

**Evidence or source:**

**Interpretation:**

**Required action or decision:**

## Domain-specific worksheet

### Incident worksheet

| UTC time | Observation or action | Impact | Owner | Evidence/decision |
| --- | --- | --- | --- | --- |
|  |  |  |  |  |

| Hypothesis | Prediction | Test | Result | Status |
| --- | --- | --- | --- | --- |
|  |  |  |  |  |

**Coverage requirement:** Maintain impact, scope, timeline, hypotheses, mitigation, recovery checks, communications and escalation.

**Decision or escalation produced by this worksheet:**

## Before-state evidence

| Evidence ID | UTC time | Source or command | Sanitized result | Interpretation | Artifact link |
| --- | --- | --- | --- | --- | --- |
| E-001 | | | | | |

## Action and command log

| Step | UTC time | Identity | Command or action | Purpose | Expected result | Actual result | Exit status |
| ---: | --- | --- | --- | --- | --- | --- | ---: |
| 1 | | | | | | | |

Record commands exactly, but replace secrets with a clear marker such as <REDACTED_SECRET>. Do not paste unrestricted environment output.

## Configuration and state changes

| Path, object or setting | Before | After | Owner and mode | Validation | Backup or version |
| --- | --- | --- | --- | --- | --- |
| | | | | | |

## Hypotheses and tests

| ID | Hypothesis | Prediction | Discriminating test | Result | Conclusion |
| --- | --- | --- | --- | --- | --- |
| H-01 | | | | | Supported / Rejected / Unresolved |

## Verification

| Requirement | Verification method | Expected | Observed | Evidence | Result |
| --- | --- | --- | --- | --- | --- |
| Primary behavior | | | | | Pass / Fail |
| Negative or denied behavior | | | | | Pass / Fail |
| Security control | | | | | Pass / Fail |
| Dependency health | | | | | Pass / Fail |
| Persistence | | | | | Pass / Fail / Not applicable |
| Monitoring and logs | | | | | Pass / Fail |

## Risk checks

- [ ] Risk reviewed: Restart before evidence.
- [ ] Risk reviewed: No UTC timeline.
- [ ] Risk reviewed: Unsupported root cause.
- [ ] Risk reviewed: Missing user validation.
- [ ] No unrelated system was changed.
- [ ] No secret or personal data appears in the record.

## Rollback or recovery

**Rollback trigger:**

**Decision owner:**

**Procedure:**

**Compatibility or data limits:**

**Rollback verification:**

**Fallback if rollback fails:**

## Communication and escalation

| UTC time | Audience | Message or decision | Owner | Next update |
| --- | --- | --- | --- | --- |
| | | | | |

## Final state

**Outcome:** Successful / Partially successful / Failed / Rolled back / Superseded

**User-visible result:**

**Remaining risk or limitation:**

**Follow-up owner and due date:**

**Review date:**

## Closeout quality gate

- [ ] The final state is independently verified.
- [ ] Evidence supports every material claim.
- [ ] Commands and timestamps are understandable to another engineer.
- [ ] Rollback, recovery or cleanup is complete.
- [ ] Temporary access and files are removed.
- [ ] Monitoring shows no delayed regression.
- [ ] Follow-up actions have owners and dates.
- [ ] Public content is fully redacted.

## Lessons

**What worked:**

**What failed or surprised the team:**

**What should change in automation, documentation, monitoring or design:**
