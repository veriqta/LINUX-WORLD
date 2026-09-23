# Security Assessment Methodology

## Assessment phases

1. Authorize scope, evidence handling and test limits.
2. Identify assets, owners, purpose, distribution, support status and exposure.
3. Establish the threat model and applicable obligations.
4. Collect configuration and runtime evidence with minimal disturbance.
5. Test representative positive and negative behaviour.
6. Validate findings to remove false positives and duplicates.
7. Rate risk with impact, exposure, exploitability and control strength.
8. Agree remediation, exception or acceptance with an owner and due date.
9. Retest the actual runtime state.
10. Report residual risk and evidence limitations.

## Finding record

| Field | Required content |
| --- | --- |
| Finding ID | Stable identifier |
| Asset and owner | Exact authorized target and accountable role |
| Condition | Reproducible observed state |
| Threat and impact | Credible failure path and consequence |
| Evidence | Timestamped, protected and attributable |
| Recommendation | Specific control with operational considerations |
| Verification | Test that proves remediation |
| Status | Open, mitigated, accepted, false positive or closed |
