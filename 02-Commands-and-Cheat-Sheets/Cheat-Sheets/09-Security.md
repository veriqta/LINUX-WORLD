# Security Cheat Sheet

> Quick reference only. Confirm the target system and read the detailed guide before running unfamiliar or state-changing commands.

| Task | Command |
| --- | --- |
| Open sockets | `ss -lntup` |
| SSH key | `ssh-keygen -t ed25519 -a 100` |
| Validate sshd | `sudo sshd -t` |
| UFW status | `sudo ufw status verbose` |
| firewalld state | `sudo firewall-cmd --list-all` |
| nftables policy | `sudo nft list ruleset` |
| SELinux state | `sestatus` |
| Audit rules | `sudo auditctl -l` |
| Failed logins | `sudo lastb -F` |
| World-writable files | `find PATH -xdev -type f -perm -0002 -print` |
| SUID files | `find PATH -xdev -type f -perm -4000 -print` |
| File checksum | `sha256sum FILE` |
| Verify checksum list | `sha256sum -c checksums.sha256` |
| Certificate dates | `openssl x509 -in CERT -noout -dates` |
| Remote TLS certificate | `openssl s_client -connect HOST:443 -servername HOST </dev/null` |
| Verify signature | `gpg --verify SIGNATURE FILE` |

## Verification rule

Do not stop at a zero exit status. Confirm the intended system state, dependent service health, logs, monitoring, persistence, and user-visible result.

Return to [Cheat Sheets](README.md) or the main [Command Index](../Command-Index.md).

