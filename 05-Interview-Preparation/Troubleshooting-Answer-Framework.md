# Troubleshooting Answer Framework

## The evidence chain

1. **Symptom:** What exactly fails, for whom, from where and since when?
2. **Impact:** Which users, hosts, services, regions or data are affected?
3. **Change:** What changed in code, configuration, package, certificate, identity, network or workload?
4. **Baseline:** What does healthy look like, and is there a known-good comparison?
5. **Layers:** Test request, DNS, route, firewall, socket, process, dependency, storage, resource and security-policy layers.
6. **Hypotheses:** Write two or three explanations that make different predictions.
7. **Test:** Choose the lowest-risk observation that separates those predictions.
8. **Mitigate:** Reduce user impact without destroying evidence or expanding blast radius.
9. **Recover:** Restore correct state and data.
10. **Verify:** Test end to end, negative behavior, persistence and monitoring.
11. **Prevent:** Fix the control, test, alert, documentation or design gap.

## Strong interview language

Use phrases such as “I would first confirm,” “this result would support,” “this result would rule out,” “before changing state,” “the rollback trigger is,” and “I would verify from the user path.”

## Weak patterns

Blind restart, random command lists, changing several variables, assuming correlation is causation, ignoring recent changes, reading only one log, declaring root cause before reproduction, and stopping when the process is merely running.
