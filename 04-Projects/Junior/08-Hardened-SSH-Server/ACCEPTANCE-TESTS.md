# Hardened SSH Server: Acceptance Tests

| ID | Test | Expected result | Evidence | Status |
| --- | --- | --- | --- | --- |
| F-01 | Clean installation | Required components install without manual repair | Sanitized transcript | Not run |
| F-02 | Primary workflow | Intended user completes the documented task | Output and state | Not run |
| F-03 | Repeat execution | Re-run creates no unsafe duplication | Diff and exit status | Not run |
| N-01 | Invalid input | Invalid values are rejected clearly | Error output | Not run |
| N-02 | Missing dependency | Missing dependency is identified | Error output | Not run |
| S-01 | Least privilege | Runtime identity has only required access | Identity and modes | Not run |
| S-02 | Unauthorized access | Unapproved identity is denied | Denial evidence | Not run |
| R-01 | Documented failure | Expected failure is detected correctly | Logs and status | Not run |
| R-02 | Recovery | Runbook restores function | Before and after | Not run |
| P-01 | Persistence | Intended state survives restart or reboot | Post-restart evidence | Not run |
| C-01 | Cleanup | Project resources are removed | Final audit | Not run |

## Project-specific tests

Test each condition: Wrong key permissions, host key change, locked account, firewall lockout, invalid config, expired key, and lost network path.

## Evidence rules

Record time, host, test ID, expected result, actual result, and sanitized evidence. Do not publish credentials, keys, tokens, personal data, or unrestricted logs.

## Exit criteria

No critical test may remain unexecuted. Any accepted limitation must state impact, reason, compensating control, and follow-up.

