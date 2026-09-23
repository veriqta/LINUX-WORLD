# Lab and Safety Guidance

Prefer read-only observation. Use disposable systems for mutations or resource pressure.

## Risk classes

| Class | Examples | Minimum control |
| --- | --- | --- |
| Read-only | procfs, sysfs, ps, ss, findmnt | Protect sensitive output |
| Instrumentation | strace, perf, ftrace, eBPF | Authorization, bounded duration, overhead monitoring |
| Resource load | CPU, memory, I/O or process pressure | Disposable lab, hard limits, stop condition |
| Boot or kernel change | parameters, modules, initramfs, crash dumps | Snapshot, console, recovery boot entry |
| Storage mutation | partitions, filesystems, RAID, repair | Dedicated disposable virtual disk |

## Mandatory preflight

- [ ] Exact target and ownership are confirmed.
- [ ] Snapshot or rebuild is available.
- [ ] Required privilege and data sensitivity are understood.
- [ ] Duration, filter, buffer limit and stop condition are defined.
- [ ] Console access exists for boot or network risk.
- [ ] Cleanup and post-test verification are documented.

Never run unbounded tracing or pressure workloads on shared or production systems.
