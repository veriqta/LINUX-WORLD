# Bash Python and Automation Quality: Multiple-Choice Bank

Choose the best answer, then explain why every other option is weaker.

## 1. A candidate needs to investigate idempotence safely. What is the best first approach?

A. Restart the service immediately

B. Run `shellcheck SCRIPT`, define the expected evidence and preserve the before state

C. Disable the relevant security control

D. Apply several likely fixes

**Correct answer: B.** B starts with bounded evidence. A can erase evidence, C expands risk, and D destroys causal clarity.

**Practical extension:** Demonstrate the answer in a disposable lab and state what the evidence does not prove.

## 2. A input validation change works now but must survive reboot. Which evidence is strongest?

A. The editing command returned zero

B. The source file contains the intended text

C. Effective runtime state is correct now and remains correct after a controlled reboot

D. A privileged administrator says it looks correct

**Correct answer: C.** C verifies effective state and persistence. Exit status, source text and opinion do not prove boot-time behavior.

**Practical extension:** Demonstrate the answer in a disposable lab and state what the evidence does not prove.

## 3. Users are denied while an administrator succeeds in traps. What should be tested next?

A. Run the workload as root permanently

B. Test as the actual identity and inspect every authorization layer

C. Set permissions to 777

D. Disable SELinux or AppArmor

**Correct answer: B.** B preserves least privilege and identifies the enforcing layer. The other options weaken controls without proving cause.

**Practical extension:** Demonstrate the answer in a disposable lab and state what the evidence does not prove.

## 4. Which result best proves recovery of temporary files?

A. The process has a PID

B. The log stopped growing

C. The original user journey and a negative security test both pass, and monitoring remains healthy

D. The configuration file has no syntax error

**Correct answer: C.** C tests service outcome and security after recovery. The other observations are necessary in some cases but incomplete.

**Practical extension:** Demonstrate the answer in a disposable lab and state what the evidence does not prove.

## 5. A measurement related to concurrency is high. What is the best interpretation?

A. High always means failure

B. Compare it with baseline, workload, saturation, latency and user impact

C. Increase every related limit

D. Ignore it until the service stops

**Correct answer: B.** B supplies context and correlation. A is absolute, C can shift the bottleneck, and D delays safe action.

**Practical extension:** Demonstrate the answer in a disposable lab and state what the evidence does not prove.

## 6. Which change practice is safest for locking?

A. Edit production directly without recording state

B. Change several variables to save time

C. Validate the target, back up state, change one variable, verify and retain rollback

D. Restart first and investigate later

**Correct answer: C.** C controls blast radius and creates causal evidence. The alternatives increase uncertainty or destroy evidence.

**Practical extension:** Demonstrate the answer in a disposable lab and state what the evidence does not prove.

## 7. A candidate needs to investigate structured output safely. What is the best first approach?

A. Restart the service immediately

B. Run `python3 -m venv VENV`, define the expected evidence and preserve the before state

C. Disable the relevant security control

D. Apply several likely fixes

**Correct answer: B.** B starts with bounded evidence. A can erase evidence, C expands risk, and D destroys causal clarity.

**Practical extension:** Demonstrate the answer in a disposable lab and state what the evidence does not prove.

## 8. A testing and secret handling change works now but must survive reboot. Which evidence is strongest?

A. The editing command returned zero

B. The source file contains the intended text

C. Effective runtime state is correct now and remains correct after a controlled reboot

D. A privileged administrator says it looks correct

**Correct answer: C.** C verifies effective state and persistence. Exit status, source text and opinion do not prove boot-time behavior.

**Practical extension:** Demonstrate the answer in a disposable lab and state what the evidence does not prove.
