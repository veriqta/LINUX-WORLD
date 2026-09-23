# Architecture Diagram

```mermaid
flowchart TD
    U["Authorized user"] --> E["Entry point"]
    E --> S["Linux service"]
    S --> D["State or dependency"]
    S --> O["Logs and metrics"]
```

Replace this diagram with the project topology. Show trust boundaries, protocols, state ownership, observability, and failure boundaries. Never publish secrets or real infrastructure names.
