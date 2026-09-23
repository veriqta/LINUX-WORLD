# Fleet Lifecycle and Configuration Governance: Practical Labs

Run only in an authorized disposable environment. Each lab requires a before state, implementation, independent verification, controlled failure, recovery and cleanup.

## Lab 1: golden image

1. Record the current golden image state and relevant versions.
2. Define a measurable target related to Fleet Lifecycle and Configuration Governance.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `systemd-delta`, `rpm -Va`, `debsums -s`, `osqueryi`, `ansible-inventory --graph`, `git diff`, `journalctl --verify`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 2: bootstrap

1. Record the current bootstrap state and relevant versions.
2. Define a measurable target related to Fleet Lifecycle and Configuration Governance.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `systemd-delta`, `rpm -Va`, `debsums -s`, `osqueryi`, `ansible-inventory --graph`, `git diff`, `journalctl --verify`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 3: desired state

1. Record the current desired state state and relevant versions.
2. Define a measurable target related to Fleet Lifecycle and Configuration Governance.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `systemd-delta`, `rpm -Va`, `debsums -s`, `osqueryi`, `ansible-inventory --graph`, `git diff`, `journalctl --verify`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 4: drift

1. Record the current drift state and relevant versions.
2. Define a measurable target related to Fleet Lifecycle and Configuration Governance.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `systemd-delta`, `rpm -Va`, `debsums -s`, `osqueryi`, `ansible-inventory --graph`, `git diff`, `journalctl --verify`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 5: rollout ring

1. Record the current rollout ring state and relevant versions.
2. Define a measurable target related to Fleet Lifecycle and Configuration Governance.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `systemd-delta`, `rpm -Va`, `debsums -s`, `osqueryi`, `ansible-inventory --graph`, `git diff`, `journalctl --verify`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 6: immutable versus mutable hosts

1. Record the current immutable versus mutable hosts state and relevant versions.
2. Define a measurable target related to Fleet Lifecycle and Configuration Governance.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `systemd-delta`, `rpm -Va`, `debsums -s`, `osqueryi`, `ansible-inventory --graph`, `git diff`, `journalctl --verify`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 7: inventory and decommissioning

1. Record the current inventory and decommissioning state and relevant versions.
2. Define a measurable target related to Fleet Lifecycle and Configuration Governance.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `systemd-delta`, `rpm -Va`, `debsums -s`, `osqueryi`, `ansible-inventory --graph`, `git diff`, `journalctl --verify`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.
