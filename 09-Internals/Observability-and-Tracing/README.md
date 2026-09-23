# Observability and Tracing

This section explains how Linux turn transient subsystem behavior into evidence with acceptable overhead.

Core objects include counters, procfs fields, tracepoints, probes, perf events, ring buffers, BPF maps, stacks and timestamps.

## Articles

- [Observability for Linux Internals](Observability-for-Linux-Internals.md)
- [Evidence before Interpretation](Evidence-before-Interpretation.md)
- [procfs and sysfs Observation](procfs-and-sysfs-Observation.md)
- [strace](strace.md)
- [ltrace](ltrace.md)
- [perf](perf.md)
- [ftrace](ftrace.md)
- [tracepoints and kprobes](tracepoints-and-kprobes.md)
- [eBPF and bpftrace](eBPF-and-bpftrace.md)
- [BCC Tools](BCC-Tools.md)
- [Flame Graphs](Flame-Graphs.md)
- [Scheduler Tracing](Scheduler-Tracing.md)
- [Memory Tracing](Memory-Tracing.md)
- [Block IO Tracing](Block-IO-Tracing.md)
- [Network Tracing](Network-Tracing.md)
- [Tracing Overhead and Safety](Tracing-Overhead-and-Safety.md)
- [Cross Subsystem Investigation](Cross-Subsystem-Investigation.md)

## Completion standard

A learner should be able to draw the principal flow, define the internal objects, observe live state safely, interpret evidence with its limits, and connect the subsystem to an operational symptom.
