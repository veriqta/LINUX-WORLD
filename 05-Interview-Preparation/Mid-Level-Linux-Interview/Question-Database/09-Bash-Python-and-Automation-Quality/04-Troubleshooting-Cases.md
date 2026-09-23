# Bash Python and Automation Quality: Troubleshooting Cases

## Case 1: A change was deployed ten minutes before users reported failures, but the main process is still running.

**Expected reasoning:** Establish impact and a precise start time. Compare effective configuration and dependencies with the last known-good state. Inspect domain-specific logs and counters. Test the complete user path. Roll back only when compatibility and state consequences are understood.

**Domain evidence:** `shellcheck SCRIPT`, `bash -x SCRIPT`, `mktemp`, `flock`, `timeout`, `jq -e`, `python3 -m venv VENV`, `python3 -m unittest`

**Candidate deliverables:** impact statement, UTC timeline, hypotheses, evidence table, chosen mitigation, recovery proof, rollback state and preventive action.

**Senior follow-up:** How would the answer change across hundreds of hosts, multiple failure domains or a strict recovery objective?

## Case 2: The problem occurs on one host but not on an apparently identical host.

**Expected reasoning:** Use the healthy host as a comparison, but first confirm workload and version parity. Diff effective configuration, package state, identity, mounts, network path, security policy, resource limits and recent changes.

**Domain evidence:** `shellcheck SCRIPT`, `bash -x SCRIPT`, `mktemp`, `flock`, `timeout`, `jq -e`, `python3 -m venv VENV`, `python3 -m unittest`

**Candidate deliverables:** impact statement, UTC timeline, hypotheses, evidence table, chosen mitigation, recovery proof, rollback state and preventive action.

**Senior follow-up:** How would the answer change across hundreds of hosts, multiple failure domains or a strict recovery objective?

## Case 3: The service works as root but fails as its service account.

**Expected reasoning:** Test as the real identity. Inspect path traversal, ownership, ACL masks, capabilities, environment, working directory, security-module denials, resource limits and credential access. Do not solve it by running the service as root.

**Domain evidence:** `shellcheck SCRIPT`, `bash -x SCRIPT`, `mktemp`, `flock`, `timeout`, `jq -e`, `python3 -m venv VENV`, `python3 -m unittest`

**Candidate deliverables:** impact statement, UTC timeline, hypotheses, evidence table, chosen mitigation, recovery proof, rollback state and preventive action.

**Senior follow-up:** How would the answer change across hundreds of hosts, multiple failure domains or a strict recovery objective?

## Case 4: The issue disappears after restart and returns later.

**Expected reasoning:** Treat the restart as mitigation, not diagnosis. Preserve evidence before the next restart. Examine growth over time, leaks, queues, limits, rotation, stale state, dependency behavior and restart-policy masking.

**Domain evidence:** `shellcheck SCRIPT`, `bash -x SCRIPT`, `mktemp`, `flock`, `timeout`, `jq -e`, `python3 -m venv VENV`, `python3 -m unittest`

**Candidate deliverables:** impact statement, UTC timeline, hypotheses, evidence table, chosen mitigation, recovery proof, rollback state and preventive action.

**Senior follow-up:** How would the answer change across hundreds of hosts, multiple failure domains or a strict recovery objective?

## Case 5: Monitoring reports healthy, but users still fail.

**Expected reasoning:** Identify what the health check actually proves. Test DNS, routing, load balancer, authentication, full request processing, state and dependencies from the affected user path. Redesign the check to represent user success.

**Domain evidence:** `shellcheck SCRIPT`, `bash -x SCRIPT`, `mktemp`, `flock`, `timeout`, `jq -e`, `python3 -m venv VENV`, `python3 -m unittest`

**Candidate deliverables:** impact statement, UTC timeline, hypotheses, evidence table, chosen mitigation, recovery proof, rollback state and preventive action.

**Senior follow-up:** How would the answer change across hundreds of hosts, multiple failure domains or a strict recovery objective?

## Case 6: A command succeeds, but the intended state is absent after reboot.

**Expected reasoning:** Separate runtime state from persistent configuration. Inspect boot activation, generated configuration, ordering, required dependencies, mount timing and errors from the current boot.

**Domain evidence:** `shellcheck SCRIPT`, `bash -x SCRIPT`, `mktemp`, `flock`, `timeout`, `jq -e`, `python3 -m venv VENV`, `python3 -m unittest`

**Candidate deliverables:** impact statement, UTC timeline, hypotheses, evidence table, chosen mitigation, recovery proof, rollback state and preventive action.

**Senior follow-up:** How would the answer change across hundreds of hosts, multiple failure domains or a strict recovery objective?

## Case 7: Only large requests or transfers fail.

**Expected reasoning:** Check MTU, fragmentation, buffers, timeouts, storage capacity, quotas, body limits, proxy limits and memory pressure. Compare a small and large request while capturing both sides.

**Domain evidence:** `shellcheck SCRIPT`, `bash -x SCRIPT`, `mktemp`, `flock`, `timeout`, `jq -e`, `python3 -m venv VENV`, `python3 -m unittest`

**Candidate deliverables:** impact statement, UTC timeline, hypotheses, evidence table, chosen mitigation, recovery proof, rollback state and preventive action.

**Senior follow-up:** How would the answer change across hundreds of hosts, multiple failure domains or a strict recovery objective?

## Case 8: Failures increase during peak load.

**Expected reasoning:** Measure demand, utilization, saturation, queue depth, tail latency, errors and dependency behavior. Check whether retries amplify load and whether limits provide backpressure or simply move the bottleneck.

**Domain evidence:** `shellcheck SCRIPT`, `bash -x SCRIPT`, `mktemp`, `flock`, `timeout`, `jq -e`, `python3 -m venv VENV`, `python3 -m unittest`

**Candidate deliverables:** impact statement, UTC timeline, hypotheses, evidence table, chosen mitigation, recovery proof, rollback state and preventive action.

**Senior follow-up:** How would the answer change across hundreds of hosts, multiple failure domains or a strict recovery objective?

## Case 9: An access-denied error appears after hardening.

**Expected reasoning:** Identify which control denied the action: DAC, ACL, sudo, capability, SELinux, AppArmor, firewall or application authorization. Confirm intended access and change the narrowest correct rule.

**Domain evidence:** `shellcheck SCRIPT`, `bash -x SCRIPT`, `mktemp`, `flock`, `timeout`, `jq -e`, `python3 -m venv VENV`, `python3 -m unittest`

**Candidate deliverables:** impact statement, UTC timeline, hypotheses, evidence table, chosen mitigation, recovery proof, rollback state and preventive action.

**Senior follow-up:** How would the answer change across hundreds of hosts, multiple failure domains or a strict recovery objective?

## Case 10: A rollback restored files but did not restore service.

**Expected reasoning:** Check data or schema compatibility, generated state, permissions, secrets, unit reload, dependencies, caches and external state. A rollback requires its own validation and fallback.

**Domain evidence:** `shellcheck SCRIPT`, `bash -x SCRIPT`, `mktemp`, `flock`, `timeout`, `jq -e`, `python3 -m venv VENV`, `python3 -m unittest`

**Candidate deliverables:** impact statement, UTC timeline, hypotheses, evidence table, chosen mitigation, recovery proof, rollback state and preventive action.

**Senior follow-up:** How would the answer change across hundreds of hosts, multiple failure domains or a strict recovery objective?

## Case 11: Logs from two hosts appear to contradict each other.

**Expected reasoning:** Verify clock synchronization, timezone, buffering, rotation, transport delay and request correlation. Build a normalized UTC timeline and preserve originals.

**Domain evidence:** `shellcheck SCRIPT`, `bash -x SCRIPT`, `mktemp`, `flock`, `timeout`, `jq -e`, `python3 -m venv VENV`, `python3 -m unittest`

**Candidate deliverables:** impact statement, UTC timeline, hypotheses, evidence table, chosen mitigation, recovery proof, rollback state and preventive action.

**Senior follow-up:** How would the answer change across hundreds of hosts, multiple failure domains or a strict recovery objective?

## Case 12: Disk use remains high after a large log is deleted.

**Expected reasoning:** Look for open descriptors to deleted inodes, hidden data beneath mounts, snapshots, reserved blocks, inode pressure and different filesystem boundaries. Releasing an open file may require safe process action.

**Domain evidence:** `shellcheck SCRIPT`, `bash -x SCRIPT`, `mktemp`, `flock`, `timeout`, `jq -e`, `python3 -m venv VENV`, `python3 -m unittest`

**Candidate deliverables:** impact statement, UTC timeline, hypotheses, evidence table, chosen mitigation, recovery proof, rollback state and preventive action.

**Senior follow-up:** How would the answer change across hundreds of hosts, multiple failure domains or a strict recovery objective?
