# Interview Practice Lab Setup

## Minimum lab

Use two disposable virtual machines on an isolated virtual network. Give each 2 vCPU, 2 to 4 GiB memory and 25 GiB storage. Add a second virtual disk for storage exercises. Use one Debian-family and one RHEL-compatible system when resources allow.

## Required safeguards

- take a clean snapshot before destructive exercises;
- block unsolicited public access;
- use test users, keys and data only;
- record hostnames, addresses and disk identities;
- keep console access for firewall, SSH and boot recovery;
- validate the recovery path before failure injection.

## Baseline

Capture operating system, kernel, CPU, memory, block devices, filesystems, addresses, routes, DNS state, listening sockets, failed services, firewall state, security-module state and time synchronization.

## Practice services

Install a small HTTP service, SSH server, scheduled job, custom systemd unit and log-producing script. Add a dedicated service account, restrictive directory, rotating log and backup target. These components support most interview scenarios without requiring a production system.

## Reset and evidence

Export sanitized notes, restore the clean snapshot and confirm that injected failures are absent. Evidence should show the command, timestamp, result, interpretation and recovery, without secrets or personal information.
