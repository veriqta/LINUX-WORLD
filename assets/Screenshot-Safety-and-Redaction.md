# Screenshot Safety and Redaction

Screenshots can expose more information than the visible lesson requires. Prefer synthetic lab environments and reserved example data.

## Never publish

- Passwords, API tokens, access keys, cookies, session values, or recovery codes
- Private keys, unredacted certificate material, or secret environment variables
- Real customer, employee, student, or patient information
- Cloud account, tenant, subscription, project, or billing identifiers
- Internal hostnames, private topology, VPN details, or nonpublic addresses
- Personal email, home paths, browser profiles, bookmarks, notifications, or terminal history
- Support tickets, private repository URLs, QR codes, or meeting links

## Safe example values

| Data | Use |
| --- | --- |
| Domains | `example.com`, `example.org`, `example.net` |
| IPv4 | `192.0.2.0/24`, `198.51.100.0/24`, `203.0.113.0/24` |
| IPv6 | `2001:db8::/32` |
| Hostnames | `web01.example.com`, `db01.example.com` |
| Users | `student`, `admin`, `appuser` |
| IDs and tokens | Clearly fake values that cannot match real credential formats |

## Redaction procedure

1. Stop if a secret appears. Revoke or rotate it before editing the image.
2. Recreate the screenshot with synthetic data whenever possible.
3. Crop unrelated windows and interface areas.
4. Remove sensitive pixels destructively. Do not rely on blur, overlays, or editable layers.
5. Flatten the exported image.
6. Remove metadata when it is not required.
7. Reopen the final export in a different viewer and inspect at high zoom.
8. Run a second-person review.
9. Record the review in the inventory.

## Terminal preparation

Use a clean shell profile, controlled prompt, safe working directory, cleared scrollback, synthetic host, and a minimal environment. Check `env`, prompt contents, history expansion, command output, and background notifications before capture.

## Incident response

If sensitive data is committed, remove public access where possible, rotate affected credentials immediately, preserve a private incident record, follow the repository security process, and review history-removal requirements. Deleting only the latest file does not remove it from Git history.
