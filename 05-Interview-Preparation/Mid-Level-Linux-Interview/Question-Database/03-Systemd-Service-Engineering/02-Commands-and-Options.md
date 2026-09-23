# Systemd Service Engineering: Commands and Options

## 1. Explain and safely use `systemctl show UNIT`

**Model answer:** `systemctl show UNIT` inspects or changes systemd unit state. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 2. Explain and safely use `systemctl edit UNIT`

**Model answer:** `systemctl edit UNIT` inspects or changes systemd unit state. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 3. Explain and safely use `systemd-analyze verify FILE`

**Model answer:** `systemd-analyze verify FILE` examines boot, unit verification and security properties. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 4. Explain and safely use `systemd-run --scope`

**Model answer:** `systemd-run --scope` inspects or operates the systemd run subsystem. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 5. Explain and safely use `systemd-analyze security UNIT`

**Model answer:** `systemd-analyze security UNIT` examines boot, unit verification and security properties. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 6. Explain and safely use `journalctl -o json-pretty -u UNIT`

**Model answer:** `journalctl -o json-pretty -u UNIT` queries the systemd journal. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.
