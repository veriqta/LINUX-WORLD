# Processes Jobs and Signals: Commands and Options

## 1. Explain and safely use `ps -ef`

**Model answer:** `ps -ef` takes a process snapshot. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 2. Explain and safely use `ps -o pid,ppid,stat,ni,cmd -p PID`

**Model answer:** `ps -o pid,ppid,stat,ni,cmd -p PID` takes a process snapshot. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 3. Explain and safely use `jobs -l`

**Model answer:** `jobs -l` shows jobs owned by the current shell. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 4. Explain and safely use `kill -TERM PID`

**Model answer:** `kill -TERM PID` sends a signal. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 5. Explain and safely use `pgrep -a NAME`

**Model answer:** `pgrep -a NAME` finds process IDs by attributes. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.

## 6. Explain and safely use `lsof -p PID`

**Model answer:** `lsof -p PID` lists open files and sockets. Before using it, confirm the target, required privilege, expected output and side effects. A complete answer interprets the relevant fields and names the next test rather than merely listing the command.

**Interviewer checks:** The candidate explains the command name, every important option and argument, privilege, read or write behavior, variable output, exit status, one verification method and one safer alternative when relevant.

**Lab challenge:** Run a read-only form, save sanitized output, identify three meaningful fields and explain the next command that the result justifies.
