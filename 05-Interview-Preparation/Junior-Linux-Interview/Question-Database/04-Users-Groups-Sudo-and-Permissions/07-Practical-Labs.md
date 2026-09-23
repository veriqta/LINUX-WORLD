# Users Groups Sudo and Permissions: Practical Labs

Run only in an authorized disposable environment. Each lab requires a before state, implementation, independent verification, controlled failure, recovery and cleanup.

## Lab 1: UID

1. Record the current UID state and relevant versions.
2. Define a measurable target related to Users Groups Sudo and Permissions.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `id USER`, `getent passwd USER`, `getent group GROUP`, `namei -l PATH`, `stat -c "%U %G %a" FILE`, `sudo -l`, `umask`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 2: GID

1. Record the current GID state and relevant versions.
2. Define a measurable target related to Users Groups Sudo and Permissions.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `id USER`, `getent passwd USER`, `getent group GROUP`, `namei -l PATH`, `stat -c "%U %G %a" FILE`, `sudo -l`, `umask`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 3: primary and supplementary groups

1. Record the current primary and supplementary groups state and relevant versions.
2. Define a measurable target related to Users Groups Sudo and Permissions.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `id USER`, `getent passwd USER`, `getent group GROUP`, `namei -l PATH`, `stat -c "%U %G %a" FILE`, `sudo -l`, `umask`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 4: ownership

1. Record the current ownership state and relevant versions.
2. Define a measurable target related to Users Groups Sudo and Permissions.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `id USER`, `getent passwd USER`, `getent group GROUP`, `namei -l PATH`, `stat -c "%U %G %a" FILE`, `sudo -l`, `umask`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 5: rwx

1. Record the current rwx state and relevant versions.
2. Define a measurable target related to Users Groups Sudo and Permissions.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `id USER`, `getent passwd USER`, `getent group GROUP`, `namei -l PATH`, `stat -c "%U %G %a" FILE`, `sudo -l`, `umask`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 6: octal mode

1. Record the current octal mode state and relevant versions.
2. Define a measurable target related to Users Groups Sudo and Permissions.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `id USER`, `getent passwd USER`, `getent group GROUP`, `namei -l PATH`, `stat -c "%U %G %a" FILE`, `sudo -l`, `umask`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 7: umask

1. Record the current umask state and relevant versions.
2. Define a measurable target related to Users Groups Sudo and Permissions.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `id USER`, `getent passwd USER`, `getent group GROUP`, `namei -l PATH`, `stat -c "%U %G %a" FILE`, `sudo -l`, `umask`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 8: sudo and service accounts

1. Record the current sudo and service accounts state and relevant versions.
2. Define a measurable target related to Users Groups Sudo and Permissions.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `id USER`, `getent passwd USER`, `getent group GROUP`, `namei -l PATH`, `stat -c "%U %G %a" FILE`, `sudo -l`, `umask`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.
