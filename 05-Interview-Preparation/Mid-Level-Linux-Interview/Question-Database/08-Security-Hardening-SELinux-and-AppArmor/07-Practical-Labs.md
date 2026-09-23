# Security Hardening SELinux and AppArmor: Practical Labs

Run only in an authorized disposable environment. Each lab requires a before state, implementation, independent verification, controlled failure, recovery and cleanup.

## Lab 1: MAC versus DAC

1. Record the current MAC versus DAC state and relevant versions.
2. Define a measurable target related to Security Hardening SELinux and AppArmor.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `getenforce`, `ls -Z PATH`, `ausearch -m AVC -ts recent`, `sealert -a FILE`, `aa-status`, `nft list ruleset`, `rpm -V PACKAGE`, `debsums PACKAGE`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 2: labels

1. Record the current labels state and relevant versions.
2. Define a measurable target related to Security Hardening SELinux and AppArmor.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `getenforce`, `ls -Z PATH`, `ausearch -m AVC -ts recent`, `sealert -a FILE`, `aa-status`, `nft list ruleset`, `rpm -V PACKAGE`, `debsums PACKAGE`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 3: domains

1. Record the current domains state and relevant versions.
2. Define a measurable target related to Security Hardening SELinux and AppArmor.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `getenforce`, `ls -Z PATH`, `ausearch -m AVC -ts recent`, `sealert -a FILE`, `aa-status`, `nft list ruleset`, `rpm -V PACKAGE`, `debsums PACKAGE`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 4: booleans

1. Record the current booleans state and relevant versions.
2. Define a measurable target related to Security Hardening SELinux and AppArmor.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `getenforce`, `ls -Z PATH`, `ausearch -m AVC -ts recent`, `sealert -a FILE`, `aa-status`, `nft list ruleset`, `rpm -V PACKAGE`, `debsums PACKAGE`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 5: profiles

1. Record the current profiles state and relevant versions.
2. Define a measurable target related to Security Hardening SELinux and AppArmor.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `getenforce`, `ls -Z PATH`, `ausearch -m AVC -ts recent`, `sealert -a FILE`, `aa-status`, `nft list ruleset`, `rpm -V PACKAGE`, `debsums PACKAGE`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 6: audit evidence

1. Record the current audit evidence state and relevant versions.
2. Define a measurable target related to Security Hardening SELinux and AppArmor.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `getenforce`, `ls -Z PATH`, `ausearch -m AVC -ts recent`, `sealert -a FILE`, `aa-status`, `nft list ruleset`, `rpm -V PACKAGE`, `debsums PACKAGE`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 7: firewall default deny

1. Record the current firewall default deny state and relevant versions.
2. Define a measurable target related to Security Hardening SELinux and AppArmor.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `getenforce`, `ls -Z PATH`, `ausearch -m AVC -ts recent`, `sealert -a FILE`, `aa-status`, `nft list ruleset`, `rpm -V PACKAGE`, `debsums PACKAGE`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.

## Lab 8: patching and integrity

1. Record the current patching and integrity state and relevant versions.
2. Define a measurable target related to Security Hardening SELinux and AppArmor.
3. Implement the smallest reversible change.
4. Validate syntax or configuration before activation.
5. Prove intended behavior using an identity or client different from the administrator.
6. Prove prohibited behavior remains denied.
7. Introduce one bounded failure and predict its evidence.
8. Detect and recover without using an undocumented shortcut.
9. Reboot or recreate where persistence matters.
10. Clean up and prove unrelated state remains intact.

**Suggested evidence:** `getenforce`, `ls -Z PATH`, `ausearch -m AVC -ts recent`, `sealert -a FILE`, `aa-status`, `nft list ruleset`, `rpm -V PACKAGE`, `debsums PACKAGE`, configuration diff, timestamped logs, exit status and end-to-end result.

**Scoring:** accuracy 3, safety 2, verification 2, recovery 1, explanation 1, cleanup 1.
