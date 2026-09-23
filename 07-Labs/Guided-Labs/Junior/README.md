# Junior Guided Labs

Follow safe procedures, explain each important action, verify expected and denied behaviour, and escalate when scope changes.

> Use only an isolated lab system that is owned or explicitly authorized. Never run destructive exercises on a personal workstation, shared server or production environment.

## Lab catalog

| Lab ID | Lab | Domain | Time | Completion outcome |
| --- | --- | --- | ---: | --- |
| GL-JR-FND-001 | Navigate and Inspect a Linux System | Foundations | 60 min | Identify the system, navigate safely and inspect files without changing them |
| GL-JR-FS-002 | Create, Copy, Move, Find and Remove Files | Filesystems | 75 min | Manage a disposable directory tree and verify every change |
| GL-JR-TXT-003 | Search and Transform Text | Text processing | 90 min | Use grep, cut, sort, uniq, sed and awk on synthetic data |
| GL-JR-IAM-004 | Manage Users and Groups Safely | Identity | 90 min | Create lifecycle-controlled accounts, groups and access checks |
| GL-JR-ACL-005 | Permissions, Ownership and ACLs | Access control | 100 min | Apply and test allow and deny cases |
| GL-JR-PKG-006 | Install, Verify and Remove Packages | Packages | 75 min | Use trusted repositories and record package state |
| GL-JR-SVC-007 | Operate a systemd Service | Services | 100 min | Inspect, start, enable, troubleshoot and verify a unit |
| GL-JR-NET-008 | Test Linux Network Connectivity | Networking | 100 min | Test interfaces, routes, DNS, ports and application response |
| GL-JR-STO-009 | Mount a Disposable Filesystem | Storage | 120 min | Create, mount, persist, unmount and verify a lab filesystem |
| GL-JR-LOG-010 | Investigate Logs with journalctl | Logging | 90 min | Scope time, unit and priority queries |
| GL-JR-AUT-011 | Write a Defensive Bash Script | Automation | 120 min | Validate input, handle errors, log and exit predictably |
| GL-JR-BKP-012 | Create and Verify a File Backup | Recovery | 90 min | Archive, checksum, restore and compare data |

## Completion rule

A lab is complete only when the required state, negative tests, persistence where applicable, security controls, reset and evidence have been verified. Record the result in the [Progress Tracker](../../Progress-Tracker.md).

## Standard lab contents

Implementations for these stable Lab IDs must include the brief, objectives, prerequisites, environment setup, starting state, guide, hints, verification, troubleshooting, cleanup, knowledge check, reflection, guarded scripts, acceptance tests and topology described in [Lab Standards](../../Lab-Standards.md).
