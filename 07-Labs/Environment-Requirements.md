# Environment Requirements

## Recommended baseline

| Resource | Junior single-node | Mid-Level multi-node | Senior simulation |
| --- | ---: | ---: | ---: |
| CPU | 2 vCPU | 4 vCPU total or more | 8 vCPU total or more |
| Memory | 2 GB | 6 GB total or more | 12 GB total or more |
| Storage | 20 GB plus optional lab disk | 60 GB total | 120 GB total |
| Nodes | 1 | 2 to 4 | 3 to 8 |
| Access | Console and sudo | Console, SSH and sudo | Isolated network, console and automation control |

Actual requirements appear in each lab.

## Supported platforms

The primary reference families are Debian or Ubuntu, RHEL-compatible systems such as Rocky Linux, and Fedora where appropriate. Labs must identify package, service, firewall, security-module and configuration differences. WSL can support shell and file exercises but is not a substitute for a complete Linux VM for boot, kernel, systemd, storage or low-level networking work.

## Host tools

- A hypervisor or container runtime appropriate to the lab
- SSH client and terminal
- Git
- Text editor
- At least one supported Linux image
- Optional Vagrant and Ansible for reproducible multi-node environments
- Optional cloud account dedicated to labs

## Network and naming

Use `.test`, `.example` or `.invalid` names. Use documented private ranges and avoid overlapping the host VPN or organizational network. Do not expose SSH or application ports to the public internet unless the lab explicitly teaches secured exposure.

## Environment verification

Run `Lab-Files/Validation-Scripts/environment-check.sh` inside the lab guest. Review its output. The script reports capabilities; it does not certify that the system is safe to destroy.
