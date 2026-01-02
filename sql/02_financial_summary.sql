-- Query 2: Monthly Financial Summary
-- Purpose: Summarize monthly revenue, costs, and profitability.

SET search_path TO revenue_monitoring;

WITH monthly_financials AS (
    SELECT
        DATE_TRUNC('month', transaction_date)::date AS month,
        SUM(fee) AS revenue,
        SUM(cost) AS cost,
        SUM(fee - cost) AS gross_profit,
		ROUND(SUM(fee - cost) / NULLIF(SUM(fee),0), 2) AS gross_margin
    FROM transactions
    GROUP BY 1
)

SELECT
    month,
    revenue,
    cost,
    gross_profit,
    gross_profit
      - LAG(gross_profit) OVER (ORDER BY month) AS mom_growth,
	ROUND((gross_profit - LAG(gross_profit) OVER (ORDER BY month))
	/ NULLIF(LAG(gross_profit) OVER (ORDER BY month), 0), 2) AS mom_growth_pct,
	gross_margin
FROM monthly_financials
ORDER BY month;