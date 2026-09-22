# Users and Permissions Cheat Sheet

> Quick reference only. Confirm the target system and read the detailed guide before running unfamiliar or state-changing commands.

| Task | Command |
| --- | --- |
| Current identity | `id` |
| Lookup account | `getent passwd USER` |
| Lookup group | `getent group GROUP` |
| Add user | `sudo useradd -m -s /bin/bash USER` |
| Add supplementary group | `sudo usermod -aG GROUP USER` |
| Inspect password aging | `sudo chage -l USER` |
| Change owner | `sudo chown USER:GROUP PATH` |
| Recursive ownership | `sudo chown -R USER:GROUP PATH` |
| Mode rw-r----- | `chmod 640 FILE` |
| Mode rwxr-x--- | `chmod 750 DIRECTORY` |
| Inspect path components | `namei -l PATH` |
| Read ACL | `getfacl PATH` |
| Grant ACL | `sudo setfacl -m u:USER:rX PATH` |
| List sudo rights | `sudo -l` |
| Test as user | `sudo -u USER -- COMMAND` |
| Validate sudo file | `sudo visudo -cf /etc/sudoers.d/FILE` |
| Default private mask | `umask 077` |

## Verification rule

Do not stop at a zero exit status. Confirm the intended system state, dependent service health, logs, monitoring, persistence, and user-visible result.

Return to [Cheat Sheets](README.md) or the main [Command Index](../Command-Index.md).

