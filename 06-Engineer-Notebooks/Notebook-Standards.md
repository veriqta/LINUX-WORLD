# Notebook Standards

## Core principles

1. **Purposeful:** Every record answers a defined operational question.
2. **Traceable:** Material claims link to evidence, change or decision.
3. **Time-aware:** Events and actions use UTC and preserve ordering.
4. **Reproducible:** Another authorized engineer can repeat or validate the work.
5. **Secure:** Collection and publication follow data classification and least privilege.
6. **Honest:** Unknown, failed and contradictory results remain visible.
7. **Reviewable:** Ownership, status and follow-up are explicit.

## Required metadata

Every record needs an ID, UTC opening time, owner or role, environment, target, reference, classification, risk and status. High-risk records need an identified reviewer.

## Evidence standard

Evidence must identify source, UTC time, collection method, relevant result, interpretation and limitation. Prefer bounded text or structured output over screenshots. Preserve original evidence in an approved location when integrity matters.

## Command standard

Commands must include context and purpose. Validate variables and targets. Never publish secrets, broad recursive deletion, unsafe wildcard use or unexplained privileged commands. Output must be trimmed to the relevant lines without changing meaning.

## Decision standard

Record context, options, available evidence, uncertainty, decision owner, expected benefit, risk, abort condition and outcome. A later edit must not erase what was known at decision time.

## Completion standard

A record is complete when requested state is verified, negative behavior remains denied, persistence is tested when needed, cleanup is done, remaining risk has an owner, and redaction has been reviewed.

## Status values

| Status | Meaning |
| --- | --- |
| Draft | Structure exists, work has not started |
| Active | Work or investigation is in progress |
| Blocked | Progress requires a named dependency or decision |
| Complete | Verification and closeout have passed |
| Superseded | A linked newer record replaces this record |

## Prohibited practices

Do not fabricate output, silently remove failed attempts, mix systems in one evidence row, use local time without timezone, paste uncontrolled data, approve personal work without required separation, or claim a root cause without a verified causal chain.
