-- Query 4: Segment Contribution
-- Purpose: Understand portfolio mix by customer segment.

SET search_path TO revenue_monitoring;

SELECT
    c.segment,
    SUM(t.fee) AS revenue,
    SUM(t.fee - t.cost) AS profit,
    ROUND(SUM(t.fee) / SUM(SUM(t.fee)) OVER (), 2) AS pct_total_revenue
FROM transactions t
JOIN customers c
  ON t.customer_id = c.customer_id
GROUP BY 1
ORDER BY 2 DESC;

