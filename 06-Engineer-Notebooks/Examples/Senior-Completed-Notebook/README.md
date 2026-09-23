# Completed Senior Example: Fleet Resolver Rollout

> Synthetic public example. Fleet sizes, regions and telemetry are illustrative.

## Decision context

Record ID EX-SR-2026-001. The resolver configuration required a timeout change across a 4,000-node Linux fleet. Primary risk was loss of name resolution; correlated failure could affect every service dependency. The decision was to use representative rings, automatic health gates and an immediately reversible configuration artifact.

## Blast-radius assessment

| Boundary | Maximum exposure | Containment |
| --- | ---: | --- |
| Validation | 10 disposable nodes | No production traffic |
| Canary | 20 nodes across OS and network segments | Manual approval |
| Ring 1 | 1% per region | Automatic pause |
| Ring 2 | 10% per region | Regional concurrency limit |
| Broad | Remaining fleet in waves | Global error-budget gate |

Stop conditions: resolver failure above 0.5%, service error increase above 1%, p99 lookup latency above 150 ms for 10 minutes, telemetry loss above 5%, or any unexplained security-control regression.

## Evidence and decision log

| UTC | Evidence or decision | Owner | Result |
| --- | --- | --- | --- |
| 08:00 | Artifact signature, syntax and rollback bundle verified | Release lead | Pass |
| 09:00 | Canary started with control group retained | Change lead | Approved |
| 09:20 | No threshold breach; one unrelated host failure isolated | Reliability lead | Continue |
| 10:00 | Ring 1 metrics compared with control | Observability lead | Continue |
| 12:30 | Ring 2 regional wave completed | Change authority | Pause for observation |
| 15:00 | Broad rollout authorized | Change authority | Approved |

## Verification matrix

| Signal | Baseline | Gate | Observed | Outcome |
| --- | ---: | ---: | ---: | --- |
| Resolver failures | 0.08% | <=0.5% | 0.09% | Pass |
| Lookup p99 | 42 ms | <=150 ms | 46 ms | Pass |
| Service errors | 0.31% | <=1.31% | 0.33% | Pass |
| Telemetry coverage | 99.7% | >=95% | 99.6% | Pass |
| Config convergence | n/a | >=99.5% | 99.8% | Pass |

## Recovery design

Each ring retained the prior signed artifact. The controller could halt new work in under one minute and restore the prior version with the same concurrency limits. Nodes missing telemetry were excluded and investigated, not counted as healthy. Console access and cached resolver behavior were confirmed before rollout.

## Outcome and review

The change completed without a threshold breach. Eight nonconverged nodes were quarantined for repair. Residual risk was accepted for the observation window with on-call ownership. Follow-ups: automate control-group comparison, test failure during partial regional isolation, and document the telemetry-exclusion policy. The review found that staged exposure, explicit stop conditions and independent telemetry prevented silent fleet-wide propagation.
