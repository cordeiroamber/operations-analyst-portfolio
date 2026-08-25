# Operations Analytics Demonstration

## Purpose

This demonstration shows how service-operations data can be translated into useful performance measures and management questions.

**Data status:** Fully synthetic demonstration data created for portfolio practice. It does not represent Helping Boldly, a former employer, customers, or university research.

## Business questions

- How many service requests are completed on time?
- Which request categories have the longest cycle times?
- How does first-contact resolution vary by category?
- Where should a manager investigate workload or process issues?

## Dataset

`sample_service_operations.csv` contains synthetic service requests with category, priority, open and close dates, status, first-contact resolution, and satisfaction score.

## KPI definitions

- **Cycle time:** days between opened and closed dates for completed requests
- **On-time rate:** percentage of completed requests closed on or before the due date
- **First-contact resolution rate:** percentage resolved during the initial interaction
- **Average satisfaction:** mean customer satisfaction score for records with a response

## Analysis

`analysis.sql` includes reusable queries for overall KPIs and category-level comparisons. Before publishing, run the queries in SQLite or adapt them to the selected database, verify the results, and add a short findings section in your own words.

## Skills demonstrated

Data definition, KPI design, SQL aggregation, operations analysis, and ethical use of synthetic data.
