-- 1. Create Tables
CREATE TABLE revenue_monitoring.customers (
    customer_id        INT PRIMARY KEY,
    segment            VARCHAR(30),
    country            VARCHAR(30)
);

CREATE TABLE revenue_monitoring.transactions (
    transaction_id     INT PRIMARY KEY,
    customer_id        INT REFERENCES revenue_monitoring.customers(customer_id),
    product            VARCHAR(30),
    transaction_date   DATE,
    amount             NUMERIC(10,2),
    fee                NUMERIC(10,2),
    cost               NUMERIC(10,2)
);

-- 2. Validate the Import
SELECT COUNT(*) FROM revenue_monitoring.customers;
SELECT COUNT(*) FROM revenue_monitoring.transactions;

SELECT * FROM revenue_monitoring.transactions LIMIT 5;

-- 3. Relational sanity check
SELECT
    t.transaction_id,
    c.country,
    t.fee
FROM revenue_monitoring.transactions t
JOIN revenue_monitoring.customers c
    ON t.customer_id = c.customer_id
LIMIT 10;
