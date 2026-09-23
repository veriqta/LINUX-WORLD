# Lab Files

This directory contains reusable, non-secret components used by more than one lab. Lab-specific assets belong inside the relevant lab package.

| Directory | Contents |
| --- | --- |
| [Shared](Shared/) | Common environment variables, shell helpers and conventions |
| [Containers](Containers/) | Safe container examples and Compose foundations |
| [Virtual Machines](Virtual-Machines/) | VM sizing, networking and snapshot guidance |
| [Vagrant](Vagrant/) | Reproducible local VM starting point |
| [Cloud Init](Cloud-Init/) | Minimal cloud guest initialization |
| [Ansible](Ansible/) | Lab inventory and provisioning starting point |
| [Systemd Units](Systemd-Units/) | Working and deliberately broken unit fixtures |
| [Sample Applications](Sample-Applications/) | Small local service used by service labs |
| [Datasets](Datasets/) | Synthetic text-processing and storage data |
| [Logs](Logs/) | Synthetic investigation logs |
| [Validation Scripts](Validation-Scripts/) | Read-only environment and acceptance helpers |

All examples use synthetic identities and documentation addresses. Review files before execution and adapt only inside an isolated environment.
