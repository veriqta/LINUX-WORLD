# Logging Observability and Time: Practical Labs

Run only in an authorized disposable environment. Each lab requires a before state, implementation, independent verification, controlled failure, recovery and cleanup.

## Lab 1: structured logs

1. Record the current structured logs state and relevant versions.
2. Define a measurable target related to Logging Observability and Time.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `journalctl --list-boots`, `journalctl -o json`, `logger -p local0.notice`, `logrotate -d FILE`, `timedatectl`, `chronyc tracking`, `ss -ulpn`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 2: journald persistence

1. Record the current journald persistence state and relevant versions.
2. Define a measurable target related to Logging Observability and Time.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `journalctl --list-boots`, `journalctl -o json`, `logger -p local0.notice`, `logrotate -d FILE`, `timedatectl`, `chronyc tracking`, `ss -ulpn`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 3: rsyslog routing

1. Record the current rsyslog routing state and relevant versions.
2. Define a measurable target related to Logging Observability and Time.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `journalctl --list-boots`, `journalctl -o json`, `logger -p local0.notice`, `logrotate -d FILE`, `timedatectl`, `chronyc tracking`, `ss -ulpn`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 4: rotation

1. Record the current rotation state and relevant versions.
2. Define a measurable target related to Logging Observability and Time.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `journalctl --list-boots`, `journalctl -o json`, `logger -p local0.notice`, `logrotate -d FILE`, `timedatectl`, `chronyc tracking`, `ss -ulpn`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 5: metrics

1. Record the current metrics state and relevant versions.
2. Define a measurable target related to Logging Observability and Time.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `journalctl --list-boots`, `journalctl -o json`, `logger -p local0.notice`, `logrotate -d FILE`, `timedatectl`, `chronyc tracking`, `ss -ulpn`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 6: cardinality

1. Record the current cardinality state and relevant versions.
2. Define a measurable target related to Logging Observability and Time.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `journalctl --list-boots`, `journalctl -o json`, `logger -p local0.notice`, `logrotate -d FILE`, `timedatectl`, `chronyc tracking`, `ss -ulpn`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 7: alerting and clock synchronization

1. Record the current alerting and clock synchronization state and relevant versions.
2. Define a measurable target related to Logging Observability and Time.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `journalctl --list-boots`, `journalctl -o json`, `logger -p local0.notice`, `logrotate -d FILE`, `timedatectl`, `chronyc tracking`, `ss -ulpn`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.
