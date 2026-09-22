# Lab Safety

Linux is powerful because it gives administrators direct control over files, users, services, networks, storage, and the operating system. That same control can delete data, expose systems, interrupt services, or make a machine unbootable.

Practise carefully.

## The main rule

Run learning exercises only in systems that are owned by the learner or explicitly authorized for testing.

Never perform Linux World labs on:

- Production systems
- Employer or client systems without written authorization
- Shared systems that may affect other users
- Computers containing important data without tested backups
- Public cloud systems without cost and security controls
- Networks or accounts the learner is not authorized to test

## Before running a command

Ask:

1. What program will run?
2. What do the options mean?
3. Which files, users, processes, services, or devices will be affected?
4. Does the command require elevated privileges?
5. Is the target path correct?
6. Can the action be reversed?
7. Is a backup or snapshot available?
8. How will success be verified?

If these questions cannot be answered, stop and investigate.

## Privilege safety

- Work as a regular user by default.
- Use `sudo` only when required.
- Avoid persistent root shells.
- Never add `sudo` merely because a command failed.
- Check whether a permission error indicates an incorrect path or unsafe operation.
- Review scripts before running them with elevated privileges.

## Path safety

Linux path mistakes can be destructive.

Before commands such as `rm`, `mv`, `cp`, `chmod`, `chown`, `find -delete`, `dd`, `mkfs`, or recursive operations:

- Print the current directory with `pwd`.
- List the target with `ls` or another read-only command.
- Use an absolute path when ambiguity creates risk.
- Check shell variables before using them in paths.
- Avoid broad wildcards until their expansion is understood.
- Use a test directory containing disposable files.

## Storage safety

Commands involving disks, partitions, filesystems, and mounts can destroy data quickly.

- Confirm device identity with `lsblk` and `blkid`.
- Distinguish the whole disk from its partitions.
- Never assume that `/dev/sdb` refers to the same device after a restart or hardware change.
- Do not format a device containing required data.
- Back up configuration before changing `/etc/fstab`.
- Test mount configuration before restarting.
- Keep recovery access available.

## Remote-access safety

When changing SSH, firewall, routing, or authentication configuration:

- Keep an existing administrative session open.
- Open a second session to test the new configuration.
- Validate configuration syntax before restarting a service.
- Confirm an alternative recovery method exists.
- Do not disable the only working access path prematurely.

## Script safety

Do not pipe an unreviewed download directly into a shell.

Before running a script:

- Obtain it from a trusted source.
- Read the entire script.
- Check commands, paths, variables, downloads, and privilege use.
- Run static checks when appropriate.
- Test it in a disposable environment.
- Confirm cleanup behavior.

## Secret and privacy safety

Never place the following in commands, screenshots, issues, commits, or shared logs:

- Passwords
- API tokens
- Private keys
- Cloud credentials
- Session cookies
- Personal information
- Internal hostnames
- Confidential IP addresses
- Customer or employer data

Use placeholders such as:

```text
<username>
<server-ip>
<token>
<private-hostname>
```

## Cloud cost safety

- Set budgets and alerts.
- Understand which resources continue billing when a virtual machine is stopped.
- Remove unused disks, snapshots, addresses, gateways, and load balancers.
- Verify deletion after completing a lab.
- Never publish cloud credentials.

## Failure-lab safety

Controlled failure is valuable only when the blast radius is controlled.

Before a failure exercise:

- Use a disposable system.
- Create a snapshot.
- Record the healthy baseline.
- Define the expected failure.
- Know the recovery method.
- Set a time limit for investigation.
- Restore and verify the system afterward.

## Emergency stop conditions

Stop immediately if:

- The target system is not the intended lab.
- A command references an unexpected device or path.
- Important data appears in the environment.
- A public service becomes exposed unexpectedly.
- Costs begin increasing unexpectedly.
- Another user's system or data may be affected.
- Recovery access has been lost.
- The command's effect is not understood.

## Recovery preparation

A safe lab should have at least one recovery method:

- Virtual-machine snapshot
- Restorable backup
- Rebuild instructions
- Cloud console access
- Rescue environment
- Copy of original configuration files

Recovery is complete only after the system has been tested, not merely after it starts.

## Safety checklist

- [ ] This system is owned or explicitly authorized for testing.
- [ ] Important data is backed up.
- [ ] The command and every option are understood.
- [ ] The exact target has been verified.
- [ ] Elevated privileges are genuinely required.
- [ ] A snapshot or recovery path exists.
- [ ] No secret or personal data will be exposed.
- [ ] The result can be verified.
- [ ] Cleanup steps are known.

## Next step

After confirming the safety checklist, review [How to Use Linux World](How-to-Use-Linux-World.md).
