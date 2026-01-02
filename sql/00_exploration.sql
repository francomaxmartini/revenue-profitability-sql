-- Query 0: Exploration
-- Purpose: Dig into the data structure for better analysis

SET search_path TO revenue_monitoring;

-- 02_financial_summary exploration
SELECT * FROM transactions LIMIT 5;
SELECT 
	DISTINCT DATE_TRUNC('year', transaction_date)::date
FROM transactions;

-- 03_product_profitability_exploration
SELECT 
	DISTINCT product,
	SUM(fee)
FROM transactions
GROUP BY 1;

-- 04_segment_contribution exploration
SELECT DISTINCT segment FROM customers;

