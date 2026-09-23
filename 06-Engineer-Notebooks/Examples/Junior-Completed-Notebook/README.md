# Completed Junior Example: Failed Web Service

> Synthetic public example. Hostnames, identities, addresses and times are documentation values.

## Record metadata

| Field | Entry |
| --- | --- |
| Record ID | EX-JR-2026-001 |
| Opened | 2026-06-18T09:12:00Z |
| Engineer | Junior System Administrator |
| Environment | Lab |
| Host/service | web-lab-01.example.test / demo-web.service |
| Classification | Public |
| Risk | Low |
| Status | Complete |

## Objective and authorization

Restore the authorized lab web service without weakening access controls. Lab owner approved investigation and restart. Success means the unit is active, the local endpoint returns HTTP 200, logs contain no new permission denial, and reboot persistence remains enabled.

## Before state and evidence

| ID | UTC | Source | Sanitized result | Interpretation |
| --- | --- | --- | --- | --- |
| E-001 | 09:13 | systemctl status demo-web | failed, status=200/CHDIR | Process cannot enter working directory |
| E-002 | 09:15 | namei -l /srv/demo-web/app | /srv/demo-web mode 0700 root:root | Service user cannot traverse parent |
| E-003 | 09:17 | systemctl cat demo-web | User=demo-web; WorkingDirectory=/srv/demo-web/app | Required identity and path confirmed |

## Hypotheses

| Hypothesis | Prediction | Test | Result | Conclusion |
| --- | --- | --- | --- | --- |
| Port conflict | Another process owns TCP 8080 | ss -ltnp | No listener | Rejected |
| Missing executable | ExecStart target absent | test -x | Present and executable | Rejected |
| Parent traversal denied | Service identity cannot enter path | sudo -u demo-web test -x /srv/demo-web | Exit 1 | Supported |

## Change and command record

| UTC | Command/action | Purpose | Result |
| --- | --- | --- | --- |
| 09:20 | stat -c '%A %U:%G %n' /srv/demo-web | Preserve before state | drwx------ root:root |
| 09:22 | install -d -o root -g demo-web -m 0750 /srv/demo-web | Grant group traversal only | Exit 0 |
| 09:23 | systemctl restart demo-web | Apply recovered path access | Exit 0 |

No recursive permission change was used. The application directory and files retained their existing ownership.

## Verification

| Requirement | Method | Observed | Result |
| --- | --- | --- | --- |
| Unit healthy | systemctl is-active demo-web | active | Pass |
| Endpoint works | curl -fsS http://127.0.0.1:8080/health | status=ok | Pass |
| Unauthorized user denied | sudo -u nobody test -x /srv/demo-web | denied | Pass |
| Logs clean | journalctl -u demo-web --since 09:22 | no new denial | Pass |
| Boot persistence | systemctl is-enabled demo-web | enabled | Pass |

## Rollback

Trigger: unexpected access by an unauthorized identity. Restore root:root and mode 0700 on /srv/demo-web, stop the unit, verify denial, and escalate to the service owner. Rollback was not required.

## Closeout

Service restored at 09:24Z. Root cause was missing execute permission for the service group on a parent directory after manual directory recreation. Follow-up A-001: add path-access validation to deployment test, owner Lab Maintainer, due 2026-06-25. Reviewer confirmed evidence and redaction at 10:02Z.
