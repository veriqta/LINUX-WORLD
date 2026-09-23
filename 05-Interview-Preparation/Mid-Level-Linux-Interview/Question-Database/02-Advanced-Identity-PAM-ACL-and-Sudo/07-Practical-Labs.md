# Advanced Identity PAM ACL and Sudo: Practical Labs

Run only in an authorized disposable environment. Each lab requires a before state, implementation, independent verification, controlled failure, recovery and cleanup.

## Lab 1: NSS

1. Record the current NSS state and relevant versions.
2. Define a measurable target related to Advanced Identity PAM ACL and Sudo.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `getent passwd USER`, `id USER`, `getfacl PATH`, `setfacl -m u:USER:rw PATH`, `visudo -c`, `pamtester SERVICE USER authenticate`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 2: PAM

1. Record the current PAM state and relevant versions.
2. Define a measurable target related to Advanced Identity PAM ACL and Sudo.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `getent passwd USER`, `id USER`, `getfacl PATH`, `setfacl -m u:USER:rw PATH`, `visudo -c`, `pamtester SERVICE USER authenticate`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 3: UID consistency

1. Record the current UID consistency state and relevant versions.
2. Define a measurable target related to Advanced Identity PAM ACL and Sudo.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `getent passwd USER`, `id USER`, `getfacl PATH`, `setfacl -m u:USER:rw PATH`, `visudo -c`, `pamtester SERVICE USER authenticate`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 4: supplementary groups

1. Record the current supplementary groups state and relevant versions.
2. Define a measurable target related to Advanced Identity PAM ACL and Sudo.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `getent passwd USER`, `id USER`, `getfacl PATH`, `setfacl -m u:USER:rw PATH`, `visudo -c`, `pamtester SERVICE USER authenticate`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 5: ACL masks

1. Record the current ACL masks state and relevant versions.
2. Define a measurable target related to Advanced Identity PAM ACL and Sudo.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `getent passwd USER`, `id USER`, `getfacl PATH`, `setfacl -m u:USER:rw PATH`, `visudo -c`, `pamtester SERVICE USER authenticate`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 6: sudo policy

1. Record the current sudo policy state and relevant versions.
2. Define a measurable target related to Advanced Identity PAM ACL and Sudo.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `getent passwd USER`, `id USER`, `getfacl PATH`, `setfacl -m u:USER:rw PATH`, `visudo -c`, `pamtester SERVICE USER authenticate`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 7: SSH authorization and account lifecycle

1. Record the current SSH authorization and account lifecycle state and relevant versions.
2. Define a measurable target related to Advanced Identity PAM ACL and Sudo.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `getent passwd USER`, `id USER`, `getfacl PATH`, `setfacl -m u:USER:rw PATH`, `visudo -c`, `pamtester SERVICE USER authenticate`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.
