# Assessment and Scoring

## Scoring model

| Area | Weight | What earns credit |
| --- | ---: | --- |
| Functional result | 30% | Required state works and acceptance tests pass |
| Verification | 20% | Positive, negative, persistence and dependency checks are valid |
| Security | 15% | Least privilege, safe secret handling and appropriate controls |
| Investigation | 15% | Evidence, hypotheses and discriminating tests support conclusions |
| Recovery and cleanup | 10% | Rollback, reset and resource removal are proven |
| Documentation | 10% | Commands, decisions, timestamps, evidence and reflection are complete |

## Result bands

- 90 to 100: Production-ready execution for the stated scope.
- 80 to 89: Strong completion with minor gaps.
- 70 to 79: Competent completion with correctable gaps.
- 60 to 69: Partial completion. Repeat weak sections.
- Below 60: Repeat the lab after reviewing prerequisites.

## Critical overrides

The result is not a pass when the learner operates outside the authorized target, exposes a secret, disables a required security control without approval, causes uncontrolled resource exhaustion, cannot recover the environment, falsifies evidence or skips mandatory cleanup.

## Assessment process

1. Run automated acceptance tests where available.
2. Review manual evidence and command reasoning.
3. Ask the learner to explain one alternative and one failure mode.
4. Inspect security, persistence and cleanup.
5. Record score, deductions, feedback and reassessment conditions.

Automated checks can confirm state. They cannot fully assess judgment, explanation or risk control.
