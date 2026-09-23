# Lab Safety and Isolation

> Use only an isolated lab system that is owned or explicitly authorized. Never run destructive exercises on a personal workstation, shared server or production environment.

## Required isolation

Use one of the following:

1. A disposable local virtual machine with a snapshot.
2. A rootless or otherwise isolated container when the exercise does not require a real kernel, boot process or block device.
3. A dedicated cloud instance in a lab account with a budget and expiration.
4. A nested lab environment explicitly designed for storage, firewall or boot exercises.

Containers share the host kernel. They are not appropriate for every systemd, kernel, storage, firewall or boot lab.

## Mandatory preflight

- [ ] The target is a lab system and is clearly named as such.
- [ ] Important data does not exist on the target.
- [ ] Snapshot, reset or rebuild has been tested.
- [ ] Console access exists before SSH, firewall, PAM or boot changes.
- [ ] Device names, mount points, interfaces and paths are exact.
- [ ] Destructive commands contain no unresolved variables or broad globs.
- [ ] Credentials are synthetic and not reused elsewhere.
- [ ] Network exposure and cloud cost are understood.
- [ ] Failure injection stop conditions are written down.
- [ ] Cleanup verification is available.

## High-risk exercise controls

| Exercise | Minimum control |
| --- | --- |
| Disk partitioning or filesystem creation | Dedicated disposable virtual disk, verified by size and serial or attachment identity |
| `/etc/fstab` changes | Console access, syntax check and test mount before reboot |
| SSH, PAM or sudo changes | Keep a second privileged session open and validate syntax first |
| Firewall changes | Console access, timed rollback and management-path exception |
| Bootloader or kernel work | Snapshot and direct console |
| Resource exhaustion | Hard time, process, memory and storage limits |
| Network failure injection | Dedicated namespace, container network or isolated VM segment |
| Malware-like or security testing | Explicitly authorized sandbox with no sensitive connectivity |

## Stop immediately when

- The target identity cannot be proven.
- Unexpected production, corporate or personal data appears.
- The learner loses recovery access.
- Resource consumption crosses the stated safety limit.
- A cloud resource is created outside the approved account or region.
- A script requests real credentials or disables protections beyond the lab scope.

## Cleanup proof

Cleanup must verify that temporary users, groups, sudo rules, keys, packages, services, timers, mounts, firewall rules, files, images, volumes, instances and credentials are removed or that the entire environment is destroyed.
