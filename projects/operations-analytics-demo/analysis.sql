-- Synthetic portfolio demonstration. SQLite-compatible queries.

-- Overall completed-request KPIs
SELECT
    COUNT(*) AS completed_requests,
    ROUND(AVG(julianday(closed_date) - julianday(opened_date)), 2) AS avg_cycle_days,
    ROUND(100.0 * AVG(CASE WHEN closed_date <= due_date THEN 1.0 ELSE 0.0 END), 1) AS on_time_rate_pct,
    ROUND(100.0 * AVG(CASE WHEN first_contact_resolution = 'Yes' THEN 1.0 ELSE 0.0 END), 1) AS first_contact_resolution_pct,
    ROUND(AVG(satisfaction_score), 2) AS avg_satisfaction
FROM service_operations
WHERE status = 'Closed';

-- Category comparison
SELECT
    category,
    COUNT(*) AS completed_requests,
    ROUND(AVG(julianday(closed_date) - julianday(opened_date)), 2) AS avg_cycle_days,
    ROUND(100.0 * AVG(CASE WHEN closed_date <= due_date THEN 1.0 ELSE 0.0 END), 1) AS on_time_rate_pct,
    ROUND(100.0 * AVG(CASE WHEN first_contact_resolution = 'Yes' THEN 1.0 ELSE 0.0 END), 1) AS first_contact_resolution_pct,
    ROUND(AVG(satisfaction_score), 2) AS avg_satisfaction
FROM service_operations
WHERE status = 'Closed'
GROUP BY category
ORDER BY avg_cycle_days DESC;

-- Open or overdue requests requiring review
SELECT
    request_id,
    category,
    priority,
    opened_date,
    due_date,
    status
FROM service_operations
WHERE status <> 'Closed'
   OR (closed_date IS NOT NULL AND closed_date > due_date)
ORDER BY priority, due_date;
