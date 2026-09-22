# Networking Cheat Sheet

> Quick reference only. Confirm the target system and read the detailed guide before running unfamiliar or state-changing commands.

| Task | Command |
| --- | --- |
| Interfaces | `ip -br link` |
| Addresses | `ip -br addr` |
| Routes | `ip route` |
| Route decision | `ip route get IP` |
| Neighbors | `ip neigh` |
| Listening TCP/UDP | `ss -lntup` |
| Socket summary | `ss -s` |
| Reachability | `ping -c 4 IP` |
| DNS A record | `dig +short A NAME` |
| Resolver state | `resolvectl status` |
| HTTP headers | `curl -sSIL URL` |
| HTTP status | `curl -fsS -o /dev/null -w '%{http_code}\n' URL` |
| Test port | `nc -vz HOST PORT` |
| TLS endpoint | `openssl s_client -connect HOST:443 -servername HOST` |
| Trace route | `tracepath HOST` |
| Capture DNS | `sudo tcpdump -ni any port 53` |
| SSH verbose | `ssh -vvv USER@HOST` |
| Dry-run sync | `rsync -aHAXn SOURCE/ HOST:DESTINATION/` |

## Verification rule

Do not stop at a zero exit status. Confirm the intended system state, dependent service health, logs, monitoring, persistence, and user-visible result.

Return to [Cheat Sheets](README.md) or the main [Command Index](../Command-Index.md).

