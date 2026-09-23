# Multi-Tenant Bastion Platform: Acceptance Tests

| ID | Domain | Test | Required evidence | Status |
| --- | --- | --- | --- | --- |
| D-01 | Design | Architecture and threat review | Approved decisions and open risks | Not run |
| B-01 | Build | Reproducible clean deployment | Versioned inputs and transcript | Not run |
| B-02 | Change | Progressive rollout and halt | Cohort and gate evidence | Not run |
| S-01 | Security | Identity and least privilege | Positive and negative access tests | Not run |
| S-02 | Supply chain | Artifact integrity | Provenance, checksum, or signature | Not run |
| O-01 | Objectives | Normal-load SLO | Latency, errors, availability, saturation | Not run |
| C-01 | Capacity | Expected peak plus headroom | Capacity data and bottleneck | Not run |
| F-01 | Isolation | Single-component failure | Bounded blast radius | Not run |
| F-02 | Amplification | Retry or queue stress | Limits prevent cascade | Not run |
| R-01 | Rollback | Bad release or policy | Known-good state restored | Not run |
| R-02 | Recovery | Loss of critical component | RPO and RTO measured | Not run |
| R-03 | Data | Recovery integrity | Application-level validation | Not run |
| G-01 | Governance | Exception lifecycle | Approval, expiry, and review evidence | Not run |
| H-01 | Handoff | Independent operator exercise | Successful runbook execution | Not run |
| X-01 | Exit | Decommission | Access, data, cost, and artifacts removed | Not run |

## Failure matrix

Exercise every listed condition: Identity provider loss, certificate expiry, audit storage full, tenant policy error, network partition, compromised key, and emergency access.

## Acceptance rule

No severe risk may be silently accepted. Record residual risk, owner, expiry, compensating controls, and decision authority.

