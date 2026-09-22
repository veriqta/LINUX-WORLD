# Command and Practical Skills Matrix

| Domain | Inspect | Change | Verify | Recover |
| --- | --- | --- | --- | --- |
| Files | pwd, find, stat, file, namei | install, cp, mv, ln | cmp, sha256sum, stat | restore copy, remove bounded artifact |
| Text | grep, awk, sed, cut, sort | sed with reviewed script, editor | diff, grep assertion | restore backup |
| Identity | id, getent, sudo -l | usermod, groupmod, visudo | id, sudo -l, access test | reverse membership or policy |
| Permissions | stat, namei, getfacl | chmod, chown, setfacl | test as intended identity | restore recorded metadata |
| Processes | ps, pgrep, lsof | renice, kill TERM | wait, pgrep, service check | restart from runbook |
| Services | systemctl, journalctl | systemctl edit, enable, reload | is-active, logs, end-to-end | revert drop-in, rollback |
| Packages | policy/info/query | apt, dnf, rpm | version, owned files, service | downgrade or remove with review |
| Storage | lsblk, findmnt, df, du | parted, LVM, mkfs, mount | findmnt, filesystem check | unmount, restore metadata or snapshot |
| Network | ip, ss, dig, tcpdump | ip, nmcli, firewall tooling | route get, socket and application test | console-backed rollback |
| Performance | uptime, vmstat, iostat, pidstat, PSI | bounded tuning | compare baseline and tails | revert tuning |
| Security | getenforce, ausearch, aa-status, nft | policy-specific tools | denied and allowed tests | restore enforcement and rules |
| Automation | shellcheck, bash -n, tests | editor and version control | idempotence and negative tests | versioned rollback |

Commands are examples, not universal prescriptions. Confirm distribution, version, privilege, target and side effects before use.
