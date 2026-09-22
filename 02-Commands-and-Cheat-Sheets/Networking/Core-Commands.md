# Networking: Core Commands

This reference explains the primary commands for networking. Examples are starting points. Read the manual page and verify assumptions before production use.

## Quick reference

| Command | Purpose | Example |
| --- | --- | --- |
| `ip addr` | Show interface addresses. | `ip -br addr` |
| `ip link` | Show or configure link state. | `ip -br link` |
| `ip route` | Show or configure routes. | `ip route show` |
| `ip neigh` | Inspect the neighbor table. | `ip neigh show` |
| `ss` | Inspect listening and connected sockets. | `ss -lntup` |
| `ping` | Test ICMP reachability and latency. | `ping -c 4 1.1.1.1` |
| `traceroute` | Trace the routed path when installed. | `traceroute example.com` |
| `tracepath` | Trace path and path MTU without special privileges on many systems. | `tracepath example.com` |
| `dig` | Query DNS records. | `dig +short A example.com` |
| `host` | Perform simple DNS lookups. | `host example.com` |
| `resolvectl` | Inspect systemd-resolved DNS state. | `resolvectl status` |
| `curl` | Transfer data and inspect application endpoints. | `curl -fsS -o /dev/null -w '%{http_code}\n' https://example.com` |
| `wget` | Download files recursively or non-interactively. | `wget --https-only URL` |
| `nc` | Test TCP or UDP connectivity. | `nc -vz host.example 443` |
| `openssl s_client` | Inspect a TLS endpoint and certificate chain. | `openssl s_client -connect example.com:443 -servername example.com` |
| `tcpdump` | Capture and inspect packets. | `sudo tcpdump -ni any port 53` |
| `ethtool` | Inspect NIC link settings and counters. | `sudo ethtool eth0` |
| `nmcli` | Manage NetworkManager connections. | `nmcli device status` |
| `scp` | Copy files over SSH. | `scp file user@host:/tmp/` |
| `rsync` | Synchronize data locally or over SSH. | `rsync -aHAX --dry-run source/ host:/backup/` |
| `ssh` | Open an encrypted remote session. | `ssh -o ConnectTimeout=10 user@host` |

## Discover syntax safely

Use these methods before relying on an option:

```bash
command --help
man command
type command
command -V command
apropos "search phrase"
```

- `type` shows whether a name resolves to an alias, function, builtin, or executable.
- `command -V` explains how the shell resolves the command.
- `man` provides the installed system's documentation, which is more reliable than syntax remembered from another distribution.
- Exit status `0` normally means success. A nonzero status means failure or a command-specific condition.

```bash
command
status=$?
printf 'exit_status=%s\n' "$status"
```

## Production checklist

Before a state-changing command:

```bash
hostnamectl --static 2>/dev/null || hostname
id
pwd
date --iso-8601=seconds
```

Then:

1. Record the current state.
2. Define the exact target.
3. Use the least privilege required.
4. Test or validate configuration.
5. Apply one controlled change.
6. Verify service health and expected state.
7. Record what changed and how to reverse it.

## Portability notes

Command behavior can differ between GNU, BusyBox, BSD-derived tools, and distribution-specific implementations. Check `--help`, installed manual pages, package documentation, and the target system version. Do not assume examples using GNU-specific options will work unchanged in minimal containers or on non-GNU systems.

