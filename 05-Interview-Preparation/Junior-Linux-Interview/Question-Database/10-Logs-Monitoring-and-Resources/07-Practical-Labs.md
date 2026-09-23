# Logs Monitoring and Resources: Practical Labs

Run only in an authorized disposable environment. Each lab requires a before state, implementation, independent verification, controlled failure, recovery and cleanup.

## Lab 1: journal

1. Record the current journal state and relevant versions.
2. Define a measurable target related to Logs Monitoring and Resources.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `journalctl --since "15 min ago"`, `free -h`, `uptime`, `vmstat 1 5`, `top`, `dmesg --level=err,warn`, `timedatectl`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 2: syslog

1. Record the current syslog state and relevant versions.
2. Define a measurable target related to Logs Monitoring and Resources.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `journalctl --since "15 min ago"`, `free -h`, `uptime`, `vmstat 1 5`, `top`, `dmesg --level=err,warn`, `timedatectl`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 3: log rotation

1. Record the current log rotation state and relevant versions.
2. Define a measurable target related to Logs Monitoring and Resources.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `journalctl --since "15 min ago"`, `free -h`, `uptime`, `vmstat 1 5`, `top`, `dmesg --level=err,warn`, `timedatectl`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 4: CPU

1. Record the current CPU state and relevant versions.
2. Define a measurable target related to Logs Monitoring and Resources.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `journalctl --since "15 min ago"`, `free -h`, `uptime`, `vmstat 1 5`, `top`, `dmesg --level=err,warn`, `timedatectl`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 5: memory

1. Record the current memory state and relevant versions.
2. Define a measurable target related to Logs Monitoring and Resources.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `journalctl --since "15 min ago"`, `free -h`, `uptime`, `vmstat 1 5`, `top`, `dmesg --level=err,warn`, `timedatectl`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 6: swap

1. Record the current swap state and relevant versions.
2. Define a measurable target related to Logs Monitoring and Resources.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `journalctl --since "15 min ago"`, `free -h`, `uptime`, `vmstat 1 5`, `top`, `dmesg --level=err,warn`, `timedatectl`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 7: load

1. Record the current load state and relevant versions.
2. Define a measurable target related to Logs Monitoring and Resources.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `journalctl --since "15 min ago"`, `free -h`, `uptime`, `vmstat 1 5`, `top`, `dmesg --level=err,warn`, `timedatectl`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 8: disk latency and time window

1. Record the current disk latency and time window state and relevant versions.
2. Define a measurable target related to Logs Monitoring and Resources.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `journalctl --since "15 min ago"`, `free -h`, `uptime`, `vmstat 1 5`, `top`, `dmesg --level=err,warn`, `timedatectl`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.
