# Centralized Logging Service: Step-by-Step Guide

## Outcome

Forward structured events from multiple simulated hosts to a protected collector with buffering, validation, retention, and search.

## Build sequence

1. Define users, objectives, scope, dependencies, and failure domains.
2. Draw architecture and trust boundaries.
3. Prepare isolated systems and synchronized time.
4. Install documented prerequisites.
5. Establish identities, permissions, network paths, and storage.
6. Build one complete client-to-service path.
7. Convert manual work into reviewed automation.
8. Add configuration validation and a last known-good state.
9. Add logs, metrics, health checks, capacity signals, and retention.
10. Run functional and security tests.
11. Inject each controlled failure in the lab.
12. Recover, verify end to end, and record recovery time.
13. Rebuild from clean systems.
14. Clean up and publish sanitized portfolio evidence.

## Commands

~~~bash
bash scripts/install.sh
bash scripts/configure.sh
bash solutions/complete-solution.sh run
bash scripts/verify.sh
bash scripts/test.sh
bash tests/failure-tests.sh
bash scripts/cleanup.sh
~~~

Expected results are documented in examples/expected-output.txt.

