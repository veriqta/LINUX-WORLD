# How to Use the Labs

## 1. Choose the correct lab

Start with the [Lab Selection Guide](Lab-Selection-Guide.md). Use the level of the work, not a job title. A learner may use a Junior lab for an unfamiliar domain and a Mid-Level lab for a familiar one.

## 2. Prepare an isolated environment

Use a disposable virtual machine, container or dedicated cloud instance. Confirm snapshots, console access, network boundaries, storage targets and possible cost before beginning. Complete the safety preflight in [Lab Safety and Isolation](Lab-Safety-and-Isolation.md).

## 3. Read before executing

Review the brief, objectives, prerequisites, starting state, required final state, prohibited actions, acceptance tests, reset method and cleanup. Do not paste commands that are not understood.

## 4. Create a working record

Record:

- Lab ID and version
- Learner and reviewer
- UTC start and finish time
- Environment and distribution
- Snapshot or reset identifier
- Commands, changes and decisions
- Expected and observed results
- Evidence paths
- Validation and score
- Cleanup result

The templates in `06-Engineer-Notebooks` can be used for detailed operational evidence.

## 5. Perform the lab

Guided learners should stop at every checkpoint and compare expected output. Independent and challenge learners should write a plan before making changes. Failure injection must never begin until the recovery route and stop condition are confirmed.

## 6. Validate the final state

Run the supplied validator when available, then perform manual checks. Read the validator before using it. A validator supports judgment; it does not replace it.

## 7. Score honestly

Apply [Assessment and Scoring](Assessment-and-Scoring.md). Record failed attempts. A failed attempt followed by a well-explained recovery is valuable evidence.

## 8. Review the solution

Open the matching solution only after completing an attempt or reaching the documented hint threshold. Compare reasoning, security, verification and cleanup, not only commands.

## 9. Reset and clean up

Run the documented cleanup, verify that accounts, packages, services, mounts, firewall rules, files and cloud resources have been removed, then destroy or revert the environment.

## 10. Extend the lab

Repeat on another supported distribution, automate the process, inject a safe failure, add monitoring, tighten privileges or explain an alternative approach.
