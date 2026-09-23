# Storage Latency and Queueing

This article explains storage latency and queueing as part of Linux internals. It focuses on why the mechanism exists, which kernel and userspace components participate, how state changes, and how an administrator can observe it safely.

> Prefer read-only observation. Use a disposable lab for boot changes, resource pressure, experimental modules, destructive storage work or high-overhead tracing.

## Learning outcomes

- Explain how storage latency and queueing helps Linux move data between applications, caches, block layers, mappings, drivers and durable media.
- Identify the principal internal objects: file pages, dirty state, bios, requests, queues, schedulers, device mapper targets, block devices and caches.
- Follow the control or data path across subsystem boundaries.
- Select low-overhead observation methods and explain their limits.
- Connect internal behavior to performance, reliability, security and troubleshooting.

## Prerequisite concepts

Learners should understand processes, files, permissions, basic shell use and the difference between userspace and kernel space. Review referenced subsystem articles when a flow crosses unfamiliar boundaries.

## Problem solved

This mechanism exists to move data between applications, caches, block layers, mappings, drivers and durable media. Without it, Linux could not provide a consistent and protected operating environment across different workloads and hardware. The implementation balances correctness, isolation, latency, throughput, fairness, compatibility and observability.

## Internal objects and participants

The important objects include file pages, dirty state, bios, requests, queues, schedulers, device mapper targets, block devices and caches. Names exposed by tools are views of kernel state, not necessarily the complete internal structure.

| Perspective | Questions to answer |
| --- | --- |
| Identity | Which task, device, socket, file, namespace or cgroup is involved? |
| State | Which states are possible, and what transition occurred? |
| Ownership | Which subsystem creates, references and releases the object? |
| Boundary | Where does control or data cross userspace, kernel, device or namespace boundaries? |
| Queueing | Where can work wait, be reordered, throttled or dropped? |
| Evidence | Which interface exposes the state, and what can it not prove? |

## Control or data flow

    write -> VFS and filesystem -> page cache or direct I/O -> writeback -> block request -> queue -> driver -> controller -> media

Use this flow as a starting model. Real paths vary with kernel configuration, architecture, filesystem, protocol, driver, cache state, namespaces and workload.

## State-transition method

1. Identify the object and its initial state.
2. Identify the event, call, interrupt or policy decision that triggers a transition.
3. Identify locks, queues, references and resource limits that can delay it.
4. Identify the resulting state and which observer can see it.
5. Identify cleanup, release or timeout behavior.

## Topic focus

- Follow latency through application, cache, filesystem, block layer, mapping, driver and device.
- Throughput, latency, queue depth and utilization describe different properties.
- Use a dedicated disposable device for destructive storage exercises.

## Kernel and userspace interfaces

Useful interfaces include /proc/diskstats, sysfs block queues, device-mapper state, mount data and kernel logs. These interfaces can be version-dependent, namespace-relative, privileged or transient. Capture the kernel release, distribution, architecture and tool version with evidence.

## Safe observation commands

Run commands only on an authorized system and protect output that reveals topology, workloads or identities:

    lsblk -o NAME,TYPE,SIZE,FSTYPE,MOUNTPOINTS
    findmnt
    cat /proc/diskstats | head
    iostat -xz 1 3
    dmsetup ls 2>/dev/null

Representative output differs across systems. Empty output can mean the object is absent, access is restricted, the feature is disabled, or the observation point is wrong.

## How to interpret evidence

| Observation | Valid interpretation | Invalid shortcut |
| --- | --- | --- |
| Counter increased | Events reached that counter during the interval | The counter alone proves the root cause |
| Queue is nonempty | Work is waiting at the observation instant | Every queued item is delayed excessively |
| State is present | The object currently reports that state | The state persisted for the whole incident |
| Trace event absent | No matching event was collected | The event never happened |
| Metric improved | The measured signal changed | The intervention caused the change without controls |

## Performance implications

Measure rate, latency, queue depth, saturation, errors and workload together. A subsystem can trade throughput for latency or fairness for predictability. Establish a baseline under a comparable workload before calling a value abnormal.

## Reliability implications

Consider reference lifetimes, persistence, recovery behavior, timeout paths, partial failure, cache durability, retry amplification and dependency ordering. A successful call may confirm acceptance, not durable completion.

## Security implications

Kernel interfaces expose privileged state and can alter isolation or resource policy. Apply least privilege, protect trace output and core dumps, respect namespace boundaries, and treat debug facilities as sensitive. Internal understanding does not authorize access or bypass.

## Common failure modes

- Observing the host while the workload is in another namespace or cgroup.
- Treating one snapshot or average as a complete time series.
- Confusing correlation with causation.
- Ignoring cache state, workload change or measurement overhead.
- Applying a userspace explanation to a kernel or device wait.
- Assuming the same behavior across kernel releases and configurations.

## Investigation connection

1. Define the symptom, scope, time window and expected behavior.
2. Select the suspected subsystem and draw the relevant path.
3. Collect low-overhead state and counters.
4. Form competing hypotheses.
5. Choose an observation that predicts different results for each hypothesis.
6. Correlate adjacent subsystems and workload events.
7. Explain the result, uncertainty and operational next step.

## Safe lab

On a disposable VM or container appropriate to the subsystem, capture a baseline, run one bounded workload, observe the relevant objects, stop the workload and confirm the state returns toward baseline. Record privilege, duration, commands, overhead, expected output, observed output and cleanup. Do not create unbounded CPU, memory, storage, process or network load.

## Common misconceptions

- Storage Latency and Queueing is not fully explained by one command or one counter.
- A userspace tool shows an interface to kernel state, not every internal decision.
- High utilization is not identical to saturation.
- Cached data is not automatically wasted memory.
- A blocked operation is not necessarily consuming CPU.

## Verification questions

1. What problem does storage latency and queueing solve?
2. Which kernel objects or states participate?
3. Where can work wait, fail or be retried?
4. Which command provides the lowest-overhead useful evidence?
5. What can that evidence not prove?
6. Which adjacent subsystem must be checked next?

## Official reference starting point

- https://www.kernel.org/doc/html/latest/block/

Confirm details against the running kernel, architecture, distribution and current upstream documentation.
