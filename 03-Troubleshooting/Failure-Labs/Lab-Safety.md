# Failure Lab Safety

## Required environment

- A disposable virtual machine or isolated lab host
- A current snapshot or rebuild path
- No production credentials or data
- Console access for labs that may affect networking or services
- Enough disk and memory headroom
- Authorization for every system used

## Before each lab

1. Read every command, including cleanup.
2. Identify privileged and destructive steps.
3. Confirm the hostname and current user.
4. Take a snapshot when the lab affects system configuration.
5. Open a second console when access could be disrupted.
6. Record the lab start time and expected symptom.
7. Confirm cleanup commands target only named lab paths, units, processes, mounts, or namespaces.

## Stop conditions

Stop immediately if:

- The hostname is not the intended lab system.
- A path or device differs from the instructions.
- Cleanup would target an unresolved variable.
- The system contains important or shared data.
- An unexpected mount, process, or network interface appears.
- Resource pressure spreads outside the lab boundary.

## After each lab

- Run cleanup.
- Verify no lab process remains.
- Verify no loop device, mount, namespace, unit, or temporary file remains.
- Confirm normal disk, memory, network, and service state.
- Revert the snapshot if cleanup is uncertain.

