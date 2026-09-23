# Security Control Verification

| Perspective | Verification question |
| --- | --- |
| Configuration | Is the intended setting present and valid? |
| Effective state | Which value is actually selected after includes and overrides? |
| Runtime | Is the kernel, service or platform enforcing it now? |
| Positive | Can the authorized identity complete the required action? |
| Negative | Is the prohibited action denied for the correct reason? |
| Logging | Is the decision visible with sufficient attribution and time? |
| Persistence | Does the control survive reload, restart or reboot? |
| Monitoring | Will failure, bypass or expiry create an actionable signal? |
| Recovery | Can the previous safe state be restored? |
| Independence | Is verification separate from the mechanism being tested? |

## Evidence rule

Record command or method, target, identity, UTC time, expected result, observed result, exit status and protected artifact location. A screenshot alone is weak evidence when machine-readable state is available.

## Closeout

Do not close a change or finding until the required control is enforced, the unauthorized path is denied, logging and monitoring work, persistence is proven, rollback remains understood and residual risk has an owner.
