# {{PROJECT_NAME}}: Assessment

| Area | Weight | Evidence | Score |
| --- | ---: | --- | ---: |
| Correctness and reproducibility | 25 | {{EVIDENCE_IDS}} | {{0_TO_25}} |
| Troubleshooting and verification | 20 | {{EVIDENCE_IDS}} | {{0_TO_20}} |
| Security and least privilege | 15 | {{EVIDENCE_IDS}} | {{0_TO_15}} |
| Reliability, rollback, and recovery | 15 | {{EVIDENCE_IDS}} | {{0_TO_15}} |
| Automation and maintainability | 10 | {{EVIDENCE_IDS}} | {{0_TO_10}} |
| Documentation and communication | 10 | {{EVIDENCE_IDS}} | {{0_TO_10}} |
| Cleanup and cost awareness | 5 | {{EVIDENCE_IDS}} | {{0_TO_5}} |

## Mandatory gates

- [ ] No exposed secret or unauthorized target
- [ ] Primary workflow succeeds from a clean build
- [ ] Security and negative tests pass
- [ ] Rollback or restore is tested
- [ ] Cleanup is safe and complete
- [ ] Claims are supported by evidence
- [ ] Known limitations are disclosed

A numeric score cannot override a failed mandatory gate.

## Review outcome

Record strengths, defects, corrections, extensions, and evidence reviewed. Select: Not complete / Functional / Tested / Documented / Portfolio ready. Add the reason, remaining work, reviewer, and learner sign-off dates.
