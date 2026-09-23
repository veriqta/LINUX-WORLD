# {{PROJECT_NAME}}: Acceptance Tests

## Rules

- Run only in the authorized lab.
- Start from a known state and record versions.
- Give every test a unique ID and preserve sanitized evidence.
- A passing command is not enough; assert the required condition.
- Restore the environment after failure tests.

## Test matrix

| ID | Type | Preconditions | Action | Expected result | Evidence | Status |
| --- | --- | --- | --- | --- | --- | --- |
| PRE-01 | Preflight | Clean lab | Validate environment | Required resources exist | `evidence/PRE-01.txt` | Not run |
| FUN-01 | Functional | Deployment complete | {{PRIMARY_ACTION}} | {{EXPECTED_STATE}} | `evidence/FUN-01.txt` | Not run |
| NEG-01 | Negative | Service healthy | Submit {{INVALID_INPUT}} | Safely rejected and logged | `evidence/NEG-01.txt` | Not run |
| SEC-01 | Security | Test identity exists | Attempt {{FORBIDDEN_ACTION}} | Access denied safely | `evidence/SEC-01.txt` | Not run |
| FAIL-01 | Failure | Recovery verified | Inject {{BOUNDED_FAILURE}} | Detection matches runbook | `evidence/FAIL-01.txt` | Not run |
| REC-01 | Recovery | Failure active | Recover | Service and data meet RTO/RPO | `evidence/REC-01.txt` | Not run |
| BOOT-01 | Persistence | System healthy | Reboot lab | Required state returns | `evidence/BOOT-01.txt` | Not run |
| CLEAN-01 | Cleanup | Evidence exported | Run cleanup | Only project resources removed | `evidence/CLEAN-01.txt` | Not run |

## Test record

- **Test ID and requirement:** {{TEST_ID_AND_REQUIREMENT}}
- **Risk:** {{RISK}}
- **Preconditions:** {{PRECONDITIONS}}
- **Action:** `{{ACTION}}`
- **Expected condition:** {{ASSERTION}}
- **Observed condition:** {{RESULT}}
- **Evidence:** {{SANITIZED_ARTIFACT}}
- **Recovery:** {{RESTORE_STEPS}}
- **Result:** Pass / Fail / Blocked

## Exit criteria

All mandatory tests pass after the first build and a clean rebuild. Any exception needs a rationale, risk owner, expiration date, and follow-up issue.
