# Systemd-Managed Web Service: Step-by-Step Guide

## Outcome

Deploy a small web service under a dedicated non-login account with systemd hardening, health checks, and logs.

## Step 1: Understand the problem

Write the user, expected result, protected resources, failure impact, and cleanup boundary. Read PROJECT-BRIEF.md.

## Step 2: Prepare the lab

Follow PREREQUISITES.md and ENVIRONMENT-SETUP.md. Record the starting hostname, identity, time, free space, and relevant service state.

## Step 3: Inspect configuration

~~~bash
sed -n '1,200p' config/environment.example
cp config/environment.example config/environment.conf
~~~

Open environment.conf and change only documented values.

## Step 4: Install prerequisites

~~~bash
bash -x scripts/install.sh
~~~

The first learning run uses shell tracing so the learner can observe commands. Do not use tracing when values may contain secrets.

## Step 5: Configure the project

~~~bash
bash scripts/configure.sh
~~~

Inspect every changed path listed by the script.

## Step 6: Run the primary workflow

Install the service, validate the unit, start it, query the health endpoint, test a failure, recover, and remove it.

Use the commands in COMMANDS-EXPLAINED.md and compare with examples/expected-output.txt.

## Step 7: Verify

~~~bash
bash scripts/verify.sh
~~~

Investigate any failed check before continuing.

## Step 8: Test

~~~bash
bash scripts/test.sh
bash tests/functional-tests.sh
bash tests/security-tests.sh
~~~

## Step 9: Controlled failure

Read tests/failure-tests.sh before running it. Run it only in the disposable lab.

~~~bash
bash tests/failure-tests.sh
~~~

Observe the symptom, collect evidence, form a hypothesis, recover, and verify again.

## Step 10: Compare with the reference solution

Complete the project independently first. Then read solutions/README.md and solutions/complete-solution.sh.

## Step 11: Clean up

~~~bash
bash scripts/cleanup.sh
~~~

Follow CLEANUP.md and verify no project artifact remains.

## Step 12: Publish evidence

Use PORTFOLIO-NOTES.md. Publish sanitized architecture, code, tests, recovery evidence, and measured results.

