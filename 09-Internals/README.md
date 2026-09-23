# Linux Internals

A systems-level guide to how Linux boots, executes programs, schedules work, manages memory, resolves files, moves data, communicates, isolates workloads and crosses the userspace-kernel boundary.

This section explains why Linux behaves the way it does. It is not another command index, administration course, tuning checklist or kernel exploitation guide.

## Start here

1. Read [How to Use Internals](How-to-Use-Internals.md).
2. Follow the [Internals Learning Path](Internals-Learning-Path.md).
3. Apply [Lab and Safety Guidance](Lab-and-Safety-Guidance.md).
4. Learn [Reading Kernel Information Safely](Reading-Kernel-Information-Safely.md).
5. Use the [Internals Glossary](Internals-Glossary.md).
6. Apply the [Subsystem Investigation Method](Subsystem-Investigation-Method.md).

## Subsystems

| Subsystem | Core question |
| --- | --- |
| [Hardware and Device Model](Hardware-and-Device-Model/) | How does Linux connect physical and virtual hardware to kernel drivers and userspace interfaces? |
| [Boot Process](Boot-Process/) | How does Linux transfer control from firmware to a fully initialized userspace? |
| [Kernel](Kernel/) | How does Linux mediate hardware and provide protected process, memory, filesystem, network and device services? |
| [CPU Interrupts and Concurrency](CPU-Interrupts-and-Concurrency/) | How does Linux share processors safely among asynchronous hardware events and concurrent execution? |
| [Program Execution and Linking](Program-Execution-and-Linking/) | How does Linux turn an executable request into a mapped, initialized process? |
| [Processes and Scheduling](Processes-and-Scheduling/) | How does Linux represent execution and decide when and where runnable tasks use CPUs? |
| [Memory Management](Memory-Management/) | How does Linux provide isolated virtual address spaces while managing finite physical memory? |
| [Filesystems](Filesystems/) | How does Linux present persistent and pseudo data through a uniform pathname and file API? |
| [IO and Storage Stack](IO-and-Storage-Stack/) | How does Linux move data between applications, caches, block layers, mappings, drivers and durable media? |
| [Networking Stack](Networking-Stack/) | How does Linux move application data through sockets, protocols, policy, routing, queues and network devices? |
| [Namespaces and Cgroups](Namespaces-and-Cgroups/) | How does Linux isolate views of global resources and account for or control resource consumption? |
| [Interprocess Communication](Interprocess-Communication/) | How does Linux allow processes to exchange data, signal events and coordinate shared state? |
| [Timekeeping and Timers](Timekeeping-and-Timers/) | How does Linux maintain useful clocks, correct wall time and deliver timed events? |
| [System Calls](System-Calls/) | How does Linux provide controlled entry points from userspace into kernel services? |
| [Observability and Tracing](Observability-and-Tracing/) | How does Linux turn transient subsystem behavior into evidence with acceptable overhead? |

## Three-level explanation model

| Level | Question |
| --- | --- |
| Conceptual | What problem does the subsystem solve? |
| Structural | Which components, objects and state transitions participate? |
| Operational | How can the behavior be observed safely? |

Each article connects these levels to performance, reliability, security and investigation.
