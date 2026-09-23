# Processes Jobs and Signals: Practical Labs

Run only in an authorized disposable environment. Each lab requires a before state, implementation, independent verification, controlled failure, recovery and cleanup.

## Lab 1: PID

1. Record the current PID state and relevant versions.
2. Define a measurable target related to Processes Jobs and Signals.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `ps -ef`, `ps -o pid,ppid,stat,ni,cmd -p PID`, `jobs -l`, `kill -TERM PID`, `pgrep -a NAME`, `lsof -p PID`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 2: PPID

1. Record the current PPID state and relevant versions.
2. Define a measurable target related to Processes Jobs and Signals.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `ps -ef`, `ps -o pid,ppid,stat,ni,cmd -p PID`, `jobs -l`, `kill -TERM PID`, `pgrep -a NAME`, `lsof -p PID`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 3: process state

1. Record the current process state state and relevant versions.
2. Define a measurable target related to Processes Jobs and Signals.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `ps -ef`, `ps -o pid,ppid,stat,ni,cmd -p PID`, `jobs -l`, `kill -TERM PID`, `pgrep -a NAME`, `lsof -p PID`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 4: foreground

1. Record the current foreground state and relevant versions.
2. Define a measurable target related to Processes Jobs and Signals.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `ps -ef`, `ps -o pid,ppid,stat,ni,cmd -p PID`, `jobs -l`, `kill -TERM PID`, `pgrep -a NAME`, `lsof -p PID`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 5: background

1. Record the current background state and relevant versions.
2. Define a measurable target related to Processes Jobs and Signals.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `ps -ef`, `ps -o pid,ppid,stat,ni,cmd -p PID`, `jobs -l`, `kill -TERM PID`, `pgrep -a NAME`, `lsof -p PID`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 6: job control

1. Record the current job control state and relevant versions.
2. Define a measurable target related to Processes Jobs and Signals.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `ps -ef`, `ps -o pid,ppid,stat,ni,cmd -p PID`, `jobs -l`, `kill -TERM PID`, `pgrep -a NAME`, `lsof -p PID`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 7: signals

1. Record the current signals state and relevant versions.
2. Define a measurable target related to Processes Jobs and Signals.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `ps -ef`, `ps -o pid,ppid,stat,ni,cmd -p PID`, `jobs -l`, `kill -TERM PID`, `pgrep -a NAME`, `lsof -p PID`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 8: nice value and open files

1. Record the current nice value and open files state and relevant versions.
2. Define a measurable target related to Processes Jobs and Signals.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `ps -ef`, `ps -o pid,ppid,stat,ni,cmd -p PID`, `jobs -l`, `kill -TERM PID`, `pgrep -a NAME`, `lsof -p PID`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.
