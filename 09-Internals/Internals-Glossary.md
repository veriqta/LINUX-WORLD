# Internals Glossary

| Term | Meaning |
| --- | --- |
| ABI | Binary-level calling and data-layout contract |
| Address space | Virtual address range and mappings visible to a process |
| Block device | Random-access device addressed in blocks through the block layer |
| Cache line | Unit transferred between levels of CPU cache and memory |
| Cgroup | Hierarchical accounting and resource-control mechanism |
| Clocksource | Hardware or virtual counter used by kernel timekeeping |
| Context switch | Transition of CPU execution from one task context to another |
| Dentry | VFS object representing a pathname component association |
| ELF | Common executable and object-file format on Linux |
| File descriptor | Per-process integer referring to an open file description |
| Futex | Userspace-oriented synchronization primitive with kernel wait and wake support |
| Inode | Filesystem object containing metadata and data mapping information |
| IRQ | Interrupt request associated with hardware or virtual interrupt delivery |
| Kernel thread | Task executing kernel work without a normal userspace address space |
| kobject | Kernel object used in the device model and sysfs representation |
| Namespace | Kernel mechanism that gives tasks isolated views of selected resources |
| NUMA | Architecture where memory access cost depends on CPU and memory-node placement |
| Page | Fixed-size unit used by virtual-memory management |
| Page cache | Memory used to cache file-backed data |
| Page fault | Exception raised when a virtual-memory access requires kernel handling |
| PID 1 | First userspace process and ancestor or subreaper with special responsibilities |
| PSI | Pressure Stall Information, time tasks stall for CPU, memory or I/O resources |
| RCU | Read-copy-update synchronization approach optimized for readers |
| Run queue | Scheduler structure holding runnable tasks |
| sk_buff | Core kernel structure representing network packet data and metadata |
| Softirq | Deferred interrupt-context mechanism for selected kernel work |
| Superblock | VFS representation of a mounted filesystem instance |
| System call | Controlled userspace entry into a kernel service |
| Tracepoint | Stable kernel instrumentation site that can emit structured events |
| VFS | Kernel abstraction providing a common file API across filesystems |
| Virtual memory area | Contiguous virtual range with common mapping properties |
| vDSO | Kernel-provided userspace mapping that implements selected operations without a full syscall transition |
| Writeback | Transfer of dirty cached data toward persistent storage |
