-- Query 3: Profitability by Product
-- Purpose: Identify which products actually drive profit, not just revenue and rank them.

SET search_path TO revenue_monitoring;

WITH product_profit AS (
    SELECT
        product,
        SUM(fee) AS revenue,
        SUM(fee - cost) AS gross_profit,
        ROUND(SUM(fee - cost) / NULLIF(SUM(fee), 0), 2) AS gross_margin
    FROM transactions
    GROUP BY product
    HAVING SUM(fee) > 500
)

SELECT
    product,
    revenue,
    gross_profit,
    gross_margin,
    RANK() OVER (ORDER BY gross_profit DESC) AS profit_rank
FROM product_profit
ORDER BY profit_rank;
	