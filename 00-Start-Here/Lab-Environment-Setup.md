# Lab Environment Setup

A Linux lab provides a safe place to learn commands, change configuration, reproduce failures, and practise recovery without risking an important computer or production system.

## Recommended baseline

Linux World uses Ubuntu Server LTS as the primary learning environment. Most foundational Linux concepts transfer to other distributions, but package names, configuration paths, security frameworks, and service defaults may differ.

For broader experience, repeat selected exercises later on a RHEL-compatible distribution such as Rocky Linux.

## Choose a lab type

| Lab type | Best for | Main limitation |
| --- | --- | --- |
| Virtual machine | Complete Beginner-to-Advanced course and safe failure labs | Requires sufficient CPU, memory, and storage |
| Cloud virtual machine | Remote administration and realistic networking | Can create charges and internet exposure |
| Windows Subsystem for Linux | Command-line foundations on Windows | Does not reproduce every full-server behavior |
| Spare computer | Direct hardware and installation practice | Greater risk of data loss during setup |
| Container | Short disposable command experiments | Not a complete replacement for a Linux server |

For the complete Beginner-to-Advanced course, a virtual machine is the preferred starting point.

## Option 1: Local virtual machine

### Suggested resources

- 2 virtual CPUs
- 4 GB RAM when the host can support it
- 25 GB dynamically allocated disk space
- NAT networking for ordinary internet access
- A non-root administrative user

Lower specifications may work for early lessons, but performance and multi-service labs may be limited.

### Setup steps

1. Install a trusted virtualization platform suitable for the host operating system.
2. Download the Ubuntu Server LTS installation image from the official Ubuntu website.
3. Verify the download when checksums or signatures are provided.
4. Create a new virtual machine using the suggested resources.
5. Attach the installation image.
6. Install Ubuntu Server.
7. Create a regular user with administrative access.
8. Apply available updates.
9. Confirm networking.
10. Shut down the virtual machine and create a clean snapshot.

### Initial verification

Run:

```bash
whoami
hostnamectl
cat /etc/os-release
uname -r
ip address
df -h
free -h
```

Confirm that:

- The session uses the expected regular account.
- The operating system is the intended release.
- A network interface has an address.
- Disk space is available.
- Memory is visible.

## Option 2: Windows Subsystem for Linux

WSL is useful for terminal, filesystem, text-processing, scripting, package-management, and many networking exercises.

Follow Microsoft's current official WSL installation documentation. Install an Ubuntu distribution, create a normal Linux user, update packages, and verify the environment with the commands shown above.

WSL should not be treated as identical to a conventional Linux server. Use a virtual machine when a lesson depends on full boot behavior, storage devices, low-level networking, kernel modules, or realistic server recovery.

## Option 3: Cloud virtual machine

Use a cloud instance when practising SSH, public and private addressing, firewall rules, remote administration, or cloud server operations.

### Cloud safety requirements

- Set a budget and billing alert before creating resources.
- Use the smallest suitable instance.
- Use SSH keys instead of password authentication when supported.
- Restrict inbound access to trusted addresses.
- Do not expose unnecessary ports.
- Never store cloud credentials inside the repository.
- Stop or delete resources after practice.
- Confirm that disks, static addresses, snapshots, and other billable resources are removed when no longer needed.

Do not begin with a publicly exposed cloud server if Linux security, SSH, firewalls, and access control are not yet understood.

## Option 4: Containers

Containers are useful for disposable command tests:

```bash
docker run --rm -it ubuntu:latest bash
```

The image may require package metadata to be updated before packages can be installed:

```bash
apt update
```

Containers are not complete virtual machines. They share the host kernel and may not run systemd or expose real block devices. Use them only when the lesson is compatible with a container environment.

## Essential lab practices

### Use snapshots

Create snapshots before working with:

- Boot configuration
- Filesystems and mounts
- Firewall rules
- SSH configuration
- Authentication
- Permissions on system paths
- Package removal
- Service dependencies
- Failure-injection exercises

Snapshots are not substitutes for backups, but they make lab recovery faster.

### Use clear hostnames

Examples:

```text
linux-lab-01
linux-client-01
linux-server-01
```

Avoid hostnames that could be mistaken for production systems.

### Keep a lab record

Record:

- Distribution and version
- Virtualization platform
- CPU, memory, and storage allocation
- Network mode
- User accounts created
- Snapshot names
- Configuration changes
- Cleanup actions

## Update the system

On Ubuntu or Debian-based systems:

```bash
sudo apt update
sudo apt upgrade
```

Read the proposed changes before confirming. A restart may be required after some updates.

## Final readiness check

The lab is ready when:

- A regular user can sign in.
- `sudo` works for authorized administrative tasks.
- The operating system and version are known.
- Networking works.
- Package metadata can be refreshed.
- Sufficient storage and memory are available.
- A clean snapshot or recovery method exists.
- Important host data is not exposed to the lab.

## Official setup references

- [Ubuntu Server documentation](https://documentation.ubuntu.com/server/)
- [Download Ubuntu Server](https://ubuntu.com/download/server)
- [Microsoft WSL documentation](https://learn.microsoft.com/windows/wsl/)
- [Rocky Linux documentation](https://docs.rockylinux.org/)

## Next step

Read [Lab Safety](Lab-Safety.md) before running commands from the Beginner-to-Advanced course.
