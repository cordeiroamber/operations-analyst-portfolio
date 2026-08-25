# Current-State and Future-State Process

> **Simulation notice:** This process comparison is part of the fictional Northstar Home Services case study.

## Current state

```text
Customer contacts company
        |
        v
Employee records information in email, notes, or web response
        |
        v
Employee re-enters request into a shared spreadsheet
        |
        v
Coordinator reviews request and searches for missing details
        |
        +---- Incomplete ----> Customer follow-up ----+
        |                                             |
        +---------------- Complete <------------------+
        |
        v
Coordinator contacts technician and proposes schedule
        |
        v
Customer is notified manually
        |
        v
Updates are recorded across messages and spreadsheets
```

### Current-state failure points

- Different channels collect different information.
- Re-entry creates delay and duplicate-record risk.
- No shared queue consistently shows priority or ownership.
- Scheduling begins before completeness is verified.
- Customer notifications and record updates depend on memory.
- Managers reconstruct performance after the fact.

## Future state

```text
Customer or employee uses standardized intake
        |
        v
System validates required fields and assigns request ID
        |
        v
Rules classify priority and route to shared coordinator queue
        |
        v
Coordinator validates request and assigns owner
        |
        +---- Exception ----> Timed follow-up task ----+
        |                                             |
        +---------------- Complete <------------------+
        |
        v
Appointment is scheduled in the centralized record
        |
        v
System sends confirmation and technician job summary
        |
        v
Status updates, completion, and material changes are audited
        |
        v
Dashboard measures backlog, cycle time, quality, and service level
```

## Gap analysis

| Capability | Current state | Future state | Business value |
|---|---|---|---|
| Intake | Unstructured and channel-dependent | Standard required fields | Better completeness and comparability |
| Identification | Informal spreadsheet rows | Unique immutable request ID | Lower duplicate risk and easier tracing |
| Routing | Manual messages and review | Rules-based shared queue | Faster assignment and visible workload |
| Ownership | Informal and sometimes missing | Required accountable owner | Clear responsibility and escalation |
| Scheduling | Separate conversations | Centralized status and appointment record | Fewer handoff errors |
| Communication | Manual and inconsistent | Event-based notifications | More reliable customer updates |
| Reporting | Retrospective manual assembly | Operational dashboard | Timely management decisions |
| Security | Broad spreadsheet access | Role-based permissions | Reduced customer-data exposure |
