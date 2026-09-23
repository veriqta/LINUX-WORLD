# Subsystem Investigation Method

## Investigation sequence

    Observed symptom
    -> scope and time window
    -> expected behavior
    -> suspected subsystem
    -> control or data path
    -> low-overhead evidence
    -> competing hypotheses
    -> discriminating observation
    -> cross-subsystem correlation
    -> explanation and uncertainty
    -> operational mitigation elsewhere

## Evidence table

| Field | Record |
| --- | --- |
| Kernel and architecture | Release, configuration context and CPU architecture |
| Workload | Rate, concurrency, data size and phase |
| Scope | Host, PID, namespace, cgroup, device, mount, socket or interface |
| Time | UTC window, monotonic duration and clock confidence |
| Observer | Tool, version, interval, filter and privilege |
| Overhead | Expected and observed collection cost |
| Finding | Fact separated from interpretation |
| Limitation | What the evidence cannot prove |

Internals investigation explains behavior. Configuration changes and recovery procedures belong in the relevant operational sections of Linux World.
