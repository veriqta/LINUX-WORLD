# Completed Mid-Level Example: Intermittent Storage Latency

> Synthetic public example using documentation systems and summarized metrics.

## Scope

Record ID EX-ML-2026-001. A staging API showed periodic 99th-percentile latency above 2 seconds between 01:00Z and 01:25Z. The objective was to identify the shared constraint, mitigate it safely and prove normal service without losing backup coverage.

## Baseline and timeline

| UTC | Fact | Evidence | Interpretation |
| --- | --- | --- | --- |
| 00:55 | API p99 180 ms; disk await 4 ms | dashboard snapshots E-001/E-002 | Normal baseline |
| 01:00 | Backup timer started | journal E-003 | Correlated change |
| 01:04 | disk await 110 ms; queue depth 31 | iostat sample E-004 | Block device saturated |
| 01:06 | CPU iowait 38%; no memory pressure | vmstat E-005 | Storage wait, not CPU exhaustion |
| 01:25 | Backup completed; latency recovered | E-006 | Strong workload correlation |

## Competing hypotheses

| Hypothesis | Discriminating evidence | Outcome |
| --- | --- | --- |
| Application regression | No deployment or error-rate change | Rejected |
| Memory reclaim | No swap activity or major-fault spike | Rejected |
| Backup saturates shared volume | Device busy time and API latency rise only during backup | Supported |

## Mitigation plan

Change CHG-EX-104 approved for staging. Apply backup I/O scheduling and bandwidth limits, keep the same backup set and retention, run a controlled backup, and abort if duration exceeds the window or integrity validation fails.

| Step | Action | Gate | Outcome |
| ---: | --- | --- | --- |
| 1 | Preserve timer/service definitions and baseline | Copies and hashes recorded | Pass |
| 2 | Add systemd drop-in with reduced I/O weight | systemd-analyze verify | Pass |
| 3 | daemon-reload and start controlled backup | No unit error | Pass |
| 4 | Observe API and device for full run | p99 < 500 ms, await < 25 ms | Pass |
| 5 | Validate backup manifest and test restore | Hash and sample restore match | Pass |

## Results

During the controlled run, API p99 peaked at 310 ms, device await peaked at 18 ms, and the backup completed in 31 minutes within its 45-minute window. A restored sample matched the manifest and retained expected ownership and mode. Monitoring and alerting remained active.

## Rollback and closeout

Rollback would remove the drop-in, reload systemd and run the original unit after capacity review. It was not required. Root cause: an unbounded backup workload competed with latency-sensitive API data on one volume. Follow-up actions: separate backup staging I/O in the next design review and add a backup/API contention alert. Owners and due dates were recorded in the tracking system. Review completed 2026-06-19T14:00:00Z.
