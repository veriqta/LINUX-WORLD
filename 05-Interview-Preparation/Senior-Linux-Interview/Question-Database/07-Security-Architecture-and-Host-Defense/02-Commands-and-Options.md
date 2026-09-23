# Security Architecture and Host Defense: Commands and Options

## 1. Explain and safely use `mokutil --sb-state`

**Model answer:** `mokutil --sb-state` inspects machine-owner keys and Secure Boot state. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 2. Explain and safely use `sysctl`

**Model answer:** `sysctl` reads or changes kernel parameters. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 3. Explain and safely use `getcap -r PATH`

**Model answer:** `getcap -r PATH` finds file capabilities. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 4. Explain and safely use `systemd-analyze security`

**Model answer:** `systemd-analyze security` examines boot, unit verification and security properties. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 5. Explain and safely use `ausearch`

**Model answer:** `ausearch` queries Linux audit events. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 6. Explain and safely use `auditctl -l`

**Model answer:** `auditctl -l` shows or changes audit rules. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 7. Explain and safely use `keyctl show`

**Model answer:** `keyctl show` inspects kernel keyrings. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 8. Explain and safely use `package verification`

**Model answer:** `package verification` inspects or operates the package subsystem. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.
