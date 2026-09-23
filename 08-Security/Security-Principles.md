# Security Principles

- Know the asset and business purpose before selecting a control.
- Deny by default where operationally supportable.
- Grant the smallest privilege for the shortest required time.
- Use independent layers so one failure does not expose the whole system.
- Reduce installed software, listeners, identities and trust relationships.
- Protect administrative paths and recovery paths separately.
- Make secure state observable and testable.
- Treat secrets as lifecycle-managed data, not configuration text.
- Preserve evidence and time accuracy.
- Plan rollback before applying change.
- Patch risk and change risk must both be managed.
- An exception requires an owner, reason, compensating control and expiry.
- Compliance supports security but cannot replace threat-informed judgment.
- Recovery capability is part of security.

## Decision test

For every control, ask what threat it reduces, what it costs, what it could break, how enforcement is proven, how bypass is detected and how the system recovers.
