# Decision Tree: Server Will Not Boot

## Entry condition

Use this tree when the primary observable symptom matches the title. If security compromise or data corruption is possible, follow the incident process before routine troubleshooting.

## Establish context

```bash
date --iso-8601=seconds
hostname
id
uptime
```

Record impact, affected scope, first occurrence, last known good, and recent changes.

## Start with

```bash
Console output
bootloader
`journalctl -xb`
`systemctl --failed`
`lsblk -f`
```

## Branches

1. No boot device -> inspect firmware, attachment, boot order, and storage visibility.
2. Bootloader error -> select known-good entry and inspect bootloader configuration.
3. Kernel starts, root not found -> inspect initramfs, root identifier, storage driver, encryption, and LVM.
4. Emergency mode -> inspect failed mounts, fstab, filesystem health, and required devices.
5. Kernel regression -> boot known-good kernel and preserve new-kernel evidence.
6. Boot completes, service unavailable -> continue with failed units, networking, and application health.

## Decision discipline

At each branch:

1. Record the observation.
2. State which hypothesis it supports or rejects.
3. Choose the smallest safe next test.
4. Avoid changing the system until the failed layer is identified.
5. Preserve output needed for escalation.

## Mitigation and verification

Recover through console with the least destructive change. Verify services, storage, network, monitoring, redundancy, and a controlled reboot.

Verify the result through the same user or workload path that exposed the failure. Check logs, monitoring, dependencies, persistence, security controls, and recurrence.

## Stop and escalate

Stop when the next action could erase data, remove administrative access, weaken security controls, affect several systems, or requires authority not already granted.

