# Security Architecture and Host Defense: Practical Labs

Run only in an authorized disposable environment. Each lab requires a before state, implementation, independent verification, controlled failure, recovery and cleanup.

## Lab 1: identity boundary

1. Record the current identity boundary state and relevant versions.
2. Define a measurable target related to Security Architecture and Host Defense.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `mokutil --sb-state`, `sysctl`, `getcap -r PATH`, `systemd-analyze security`, `ausearch`, `auditctl -l`, `keyctl show`, `package verification`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 2: privilege path

1. Record the current privilege path state and relevant versions.
2. Define a measurable target related to Security Architecture and Host Defense.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `mokutil --sb-state`, `sysctl`, `getcap -r PATH`, `systemd-analyze security`, `ausearch`, `auditctl -l`, `keyctl show`, `package verification`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 3: secure boot

1. Record the current secure boot state and relevant versions.
2. Define a measurable target related to Security Architecture and Host Defense.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `mokutil --sb-state`, `sysctl`, `getcap -r PATH`, `systemd-analyze security`, `ausearch`, `auditctl -l`, `keyctl show`, `package verification`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 4: kernel hardening

1. Record the current kernel hardening state and relevant versions.
2. Define a measurable target related to Security Architecture and Host Defense.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `mokutil --sb-state`, `sysctl`, `getcap -r PATH`, `systemd-analyze security`, `ausearch`, `auditctl -l`, `keyctl show`, `package verification`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 5: MAC

1. Record the current MAC state and relevant versions.
2. Define a measurable target related to Security Architecture and Host Defense.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `mokutil --sb-state`, `sysctl`, `getcap -r PATH`, `systemd-analyze security`, `ausearch`, `auditctl -l`, `keyctl show`, `package verification`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 6: secrets

1. Record the current secrets state and relevant versions.
2. Define a measurable target related to Security Architecture and Host Defense.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `mokutil --sb-state`, `sysctl`, `getcap -r PATH`, `systemd-analyze security`, `ausearch`, `auditctl -l`, `keyctl show`, `package verification`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 7: audit

1. Record the current audit state and relevant versions.
2. Define a measurable target related to Security Architecture and Host Defense.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `mokutil --sb-state`, `sysctl`, `getcap -r PATH`, `systemd-analyze security`, `ausearch`, `auditctl -l`, `keyctl show`, `package verification`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 8: integrity

1. Record the current integrity state and relevant versions.
2. Define a measurable target related to Security Architecture and Host Defense.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `mokutil --sb-state`, `sysctl`, `getcap -r PATH`, `systemd-analyze security`, `ausearch`, `auditctl -l`, `keyctl show`, `package verification`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 9: supply chain and response

1. Record the current supply chain and response state and relevant versions.
2. Define a measurable target related to Security Architecture and Host Defense.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `mokutil --sb-state`, `sysctl`, `getcap -r PATH`, `systemd-analyze security`, `ausearch`, `auditctl -l`, `keyctl show`, `package verification`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.
