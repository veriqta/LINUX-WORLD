# Logging Observability and Time: Commands and Options

## 1. Explain and safely use `journalctl --list-boots`

**Model answer:** `journalctl --list-boots` queries the systemd journal. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 2. Explain and safely use `journalctl -o json`

**Model answer:** `journalctl -o json` queries the systemd journal. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 3. Explain and safely use `logger -p local0.notice`

**Model answer:** `logger -p local0.notice` writes a controlled log message. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 4. Explain and safely use `logrotate -d FILE`

**Model answer:** `logrotate -d FILE` inspects or operates the logrotate subsystem. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 5. Explain and safely use `timedatectl`

**Model answer:** `timedatectl` shows or configures system time state. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 6. Explain and safely use `chronyc tracking`

**Model answer:** `chronyc tracking` inspects chrony time synchronization. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 7. Explain and safely use `ss -ulpn`

**Model answer:** `ss -ulpn` inspects sockets and transport state. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.
