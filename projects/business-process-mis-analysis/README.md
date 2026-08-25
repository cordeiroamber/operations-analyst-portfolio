# Business Process and MIS Analysis

## Service Request Intake and Scheduling Improvement

> **Portfolio simulation:** Northstar Home Services is a fictional company. All people, systems, records, baseline measures, findings, and recommendations in this case study are simulated for demonstration purposes. They do not represent Helping Boldly, a former employer, customers, or original university research.

## Executive summary

Northstar Home Services receives customer service requests through phone, email, and a website form. Staff manually re-enter information into separate spreadsheets before assigning work to a coordinator. The fragmented process creates duplicate records, incomplete information, unclear ownership, scheduling delays, and limited management visibility.

The analysis recommends a centralized service-request system with standardized intake fields, automated request IDs, role-based work queues, scheduling controls, notifications, and operational dashboards. The proposed future state reduces duplicate entry, establishes ownership, improves data quality, and creates a measurable path toward faster scheduling and more reliable customer communication.

## Business problem

Managers cannot reliably answer three basic questions:

1. How many requests are waiting for review, scheduling, or completion?
2. Who owns each request and what is the next required action?
3. Where do delays, rework, and incomplete information enter the process?

### Simulated baseline

| Measure | Baseline | Primary issue |
|---|---:|---|
| Requests with missing required information | 22% | Intake channels collect inconsistent fields |
| Duplicate request records | 11% | Staff create separate spreadsheet entries |
| Average time from intake to scheduled appointment | 2.8 days | Manual routing and follow-up |
| Customers receiving a timely status update | 61% | Notifications depend on individual follow-through |
| Requests with a clearly recorded owner | 68% | Ownership is tracked informally |

These values are simulated assumptions used to demonstrate measurement design, not reported business results.

## Scope

### In scope

- Request capture from phone, email, and web channels
- Required customer and service information
- Request classification and priority
- Ownership, scheduling, status, and notifications
- Management reporting and audit history

### Out of scope

- Technician route optimization
- Payroll and accounting
- Inventory purchasing
- Customer payment processing
- Replacement of the company website

## Stakeholders

- **Customer:** submits a request and needs confirmation and status visibility.
- **Customer service representative:** captures accurate information and resolves simple questions.
- **Scheduling coordinator:** validates requests, assigns appointments, and manages exceptions.
- **Field technician:** receives complete job information and records outcomes.
- **Operations manager:** monitors workload, cycle time, service levels, and process risks.
- **System administrator:** manages access, configuration, data retention, and support.

See the completed [stakeholder matrix](stakeholder_matrix.csv).

## Current-state analysis

The current process relies on unstructured messages and multiple spreadsheets:

1. A customer contacts the company by phone, email, or web form.
2. An employee records whatever information is available.
3. The request is re-entered into a shared spreadsheet.
4. A coordinator reviews the spreadsheet and follows up for missing details.
5. The coordinator contacts a technician and proposes an appointment.
6. Staff manually notify the customer.
7. Updates are recorded inconsistently across email, notes, and spreadsheets.

### Root causes

- No shared definition of a complete request
- No system-generated unique request identifier
- Multiple records serving as competing sources of truth
- Manual routing with no queue or escalation rule
- Status updates dependent on memory and individual practices
- Reporting assembled manually after work occurs

See the detailed [current-state and future-state process comparison](current_future_process.md).

## Requirements

The analysis defines 12 prioritized functional and nonfunctional requirements covering intake, data quality, routing, scheduling, notifications, reporting, security, and auditability.

- [Completed requirements analysis](requirements_analysis.csv)
- [Acceptance test plan](acceptance_test_plan.csv)
- [Reusable blank requirements template](requirements_template.csv)

## Recommended future state

Implement a centralized service-request platform that:

- Captures required information through standardized channel-specific forms
- Assigns a unique request ID at the first point of entry
- Routes requests to a shared coordinator queue using category and priority rules
- Shows owner, status, next action, and due time on every record
- Prevents scheduling until required information is complete
- Sends automatic customer confirmations and status notifications
- Gives technicians a consistent job summary and completion form
- Provides dashboards for backlog, cycle time, data quality, and service levels
- Maintains role-based access and an auditable history of material changes

## Expected benefits and targets

| KPI | Simulated baseline | 90-day target | Measurement rule |
|---|---:|---:|---|
| Missing-information rate | 22% | 5% or less | Incomplete requests / total submitted requests |
| Duplicate-record rate | 11% | 2% or less | Confirmed duplicates / total submitted requests |
| Intake-to-schedule time | 2.8 days | 1.0 day or less | Average elapsed time from creation to scheduled status |
| Timely customer-update rate | 61% | 90% or more | Requests updated within the defined service interval |
| Recorded-owner rate | 68% | 98% or more | Active requests with an assigned accountable owner |

Targets are proposed for the fictional scenario and would require validation during a real pilot.

## Implementation roadmap

### Phase 1: Validate and configure - Weeks 1-2

- Confirm process scope, field definitions, roles, and service levels.
- Configure intake forms, status values, queues, and access rules.
- Clean a limited set of open records for pilot migration.

### Phase 2: Pilot - Weeks 3-4

- Train customer service and scheduling users.
- Route one service category through the new process.
- Track defects, workarounds, adoption, and baseline-to-target movement.

### Phase 3: Expand - Weeks 5-8

- Resolve pilot issues and add remaining request categories.
- Introduce technician completion forms and automated notifications.
- Publish manager dashboards and weekly KPI reviews.

### Phase 4: Stabilize - Weeks 9-12

- Audit data quality, permissions, and adherence to status definitions.
- Retire duplicate spreadsheets after reconciliation and approval.
- Establish ownership for continuous improvement and system governance.

## Risks and controls

| Risk | Potential effect | Control |
|---|---|---|
| Staff continue using spreadsheets | Split source of truth | Pilot agreement, training, and planned spreadsheet retirement |
| Required fields slow urgent intake | Delayed response | Minimal urgent-request form with timed follow-up task |
| Poor historical data quality | Unreliable reporting | Validate only active records and document migration rules |
| Excessive notifications | Customer or staff fatigue | Trigger notifications only at meaningful status changes |
| Broad access to customer data | Privacy and security exposure | Role-based access, least privilege, and access review |

## Recommendation

Proceed with a limited pilot of the centralized intake and scheduling process. Approve wider rollout only if the pilot demonstrates improved completeness, ownership, and scheduling time without creating unacceptable intake delays or user workarounds.

## Skills demonstrated

Business process analysis, stakeholder analysis, requirements elicitation, functional and nonfunctional requirements, gap analysis, process redesign, KPI definition, acceptance testing, implementation planning, risk assessment, and executive communication.
