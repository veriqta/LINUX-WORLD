# Commonly Confused Terms

| Terms | Essential distinction |
| --- | --- |
| Linux and distribution | Linux is the kernel; a distribution combines it with userspace, packages, policies, and lifecycle management. |
| Root user and root directory | `root` is UID 0; `/` is the top of a filesystem namespace. |
| Shell and terminal | A shell interprets commands; a terminal provides an interactive input and display interface. |
| Process and program | A program is stored code; a process is an executing instance. |
| Process and thread | A process owns a resource context; threads share much of that context while executing independently. |
| Service and daemon | A daemon is a background process; a service is the managed operational unit, which may involve several processes. |
| Package and repository | A package is an installable artifact; a repository distributes packages and metadata. |
| Disk, partition, volume, filesystem, mount | These are separate layers from device to allocation, data organization, and namespace attachment. |
| Memory use and memory leak | High use may be healthy caching; a leak is unreleased, continually growing allocation that is no longer useful. |
| Load average and CPU use | Load includes runnable and certain blocked tasks; CPU use measures processor time. |
| Port open and port reachable | A local listener may still be blocked by routing, firewall, policy, or binding scope. |
| Authentication and authorization | Authentication proves identity; authorization decides permitted actions. |
| Encryption and hashing | Encryption is reversible with a key; hashing is designed as a one-way digest. |
| Container and virtual machine | Containers share a host kernel; VMs normally run separate guest kernels. |
| Namespace and cgroup | Namespaces isolate views; cgroups organize, account for, and limit resources. |
| Backup and snapshot | A snapshot captures state in a storage system; a backup is a recoverable copy with independent retention goals. |
| RAID and backup | RAID can improve availability; it does not protect against deletion, corruption, or site loss. |
| Incident and problem | An incident restores service urgently; problem management investigates and prevents recurring causes. |
| SLI and SLO | An SLI is a measurement; an SLO is a target applied to that measurement. |
