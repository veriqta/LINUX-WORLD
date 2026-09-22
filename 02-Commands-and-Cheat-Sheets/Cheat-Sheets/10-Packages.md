# Packages Cheat Sheet

> Quick reference only. Confirm the target system and read the detailed guide before running unfamiliar or state-changing commands.

| Task | Command |
| --- | --- |
| Detect distribution | `cat /etc/os-release` |
| Refresh APT | `sudo apt update` |
| APT candidate | `apt-cache policy PACKAGE` |
| Install with APT | `sudo apt install PACKAGE` |
| APT upgrades | `apt list --upgradable` |
| File owner, Debian | `dpkg -S PATH` |
| Verify Debian package | `dpkg -V PACKAGE` |
| DNF updates | `sudo dnf check-update` |
| Install with DNF | `sudo dnf install PACKAGE` |
| DNF history | `sudo dnf history list` |
| File owner, RPM | `rpm -qf PATH` |
| Verify RPM package | `rpm -V PACKAGE` |
| Installed version | `COMMAND --version` |
| Snap packages | `snap list` |
| Flatpak packages | `flatpak list` |
| Processes needing restart, RPM | `sudo needs-restarting` |

## Verification rule

Do not stop at a zero exit status. Confirm the intended system state, dependent service health, logs, monitoring, persistence, and user-visible result.

Return to [Cheat Sheets](README.md) or the main [Command Index](../Command-Index.md).

