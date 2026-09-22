# Security: Core Commands

This reference explains the primary commands for security. Examples are starting points. Read the manual page and verify assumptions before production use.

## Quick reference

| Command | Purpose | Example |
| --- | --- | --- |
| `ssh-keygen` | Create and inspect SSH keys. | `ssh-keygen -t ed25519 -a 100` |
| `ssh-copy-id` | Install a public key on a remote account. | `ssh-copy-id user@host` |
| `sshd -t` | Validate OpenSSH server configuration. | `sudo sshd -t` |
| `ufw` | Manage a simplified host firewall. | `sudo ufw status verbose` |
| `firewall-cmd` | Manage firewalld rules and zones. | `sudo firewall-cmd --list-all` |
| `nft` | Inspect or manage nftables rules. | `sudo nft list ruleset` |
| `iptables-save` | Export legacy iptables policy for review or backup. | `sudo iptables-save` |
| `fail2ban-client` | Inspect Fail2ban status when installed. | `sudo fail2ban-client status sshd` |
| `getenforce` | Display SELinux enforcement mode. | `getenforce` |
| `sestatus` | Display detailed SELinux status. | `sestatus` |
| `ausearch` | Search Linux audit records. | `sudo ausearch -m USER_LOGIN -ts today` |
| `aureport` | Summarize audit records. | `sudo aureport --auth` |
| `auditctl` | Inspect or modify runtime audit rules. | `sudo auditctl -l` |
| `sha256sum` | Calculate or verify SHA-256 checksums. | `sha256sum -c checksums.sha256` |
| `gpg` | Encrypt, decrypt, sign, or verify data. | `gpg --verify release.sig release.tar.gz` |
| `openssl x509` | Inspect X.509 certificate metadata. | `openssl x509 -in cert.pem -noout -subject -issuer -dates` |
| `find permissions` | Locate risky permission patterns. | `find / -xdev -type f -perm -0002 -print 2>/dev/null` |
| `last` | Show login history. | `last -F` |
| `lastb` | Show failed login history where supported. | `sudo lastb -F` |
| `lynis` | Run a host security audit when installed. | `sudo lynis audit system` |

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

