# {{PROJECT_NAME}}: Environment Setup

## Supported topology

| Host | Role | Example private address | Exposure |
| --- | --- | --- | --- |
| `node1` | {{ROLE}} | `192.0.2.10` | Lab network only |

The example range is reserved for documentation. Replace it with a valid private lab address.

## Create the lab

1. Create hosts with specified CPU, memory, disk, firmware, and network settings.
2. Install a supported distribution and updates.
3. Create a named administrative user and verify `sudo` access.
4. Configure hostnames and local name resolution.
5. Record a clean snapshot or rollback point.
6. Copy `config/environment.example` to the ignored local configuration.
7. Run preflight validation.

## Baseline evidence

```bash
cat /etc/os-release
uname -r
id
ip -brief address
ip route
findmnt
free -h
```

Capture sanitized output. Define checks for host count, reachability, name resolution, time, ports, storage, privileges, repositories, and snapshots.

## Reset procedure

Explain how to return to the clean snapshot, which evidence must be exported first, and how to prove no project resource remains.
