# 📊Revenue & Profitability SQL Analysis

## 📌Project Overview
This project analyzes **synthetic transactional and customer data** using SQL to evaluate **revenue growth and profitability** across products and customer segments.

The goal is to demonstrate **business-oriented financial analytics**, focusing on how revenue, costs, and margins evolve over time and which products or segments drive profitability.

The project is intentionally focused on **SQL querying and data modeling**, built to be potentially visualized by Power BI later.

## 🗂️ Project Structure
```
revenue-profitability-sql/
│
├── data/
│   ├── transactions.csv
│   └── customers.csv
│
├── sql/
│   ├── 00_exploration.sql
│   ├── 01_setup.sql
│   ├── 02_financial_summary.sql
│   ├── 03_product_profitability.sql
│   └── 04_segment_contribution.sql
│
├── screenshots/
│   ├── query2_financial_summary.png
│   ├── query3_product_profitability.png
│   └── query4_segment_contribution.png
│
└── README.md
```

## 🛠️ Tech Stack
- **PostgreSQL**
- SQL (CTEs, aggregation, date functions, window functions, ranking)
- Synthetic CSV data

## 📁 Dataset Description
All data used in this project is **synthetic but realistic**, created for public sharing and portfolio use.

- **transactions.csv**

Transaction-level financial data including transaction value, fees (revenue), costs, products, and dates.

- **customers.csv**

Customer attributes including segment (Retail, SME, Corporate) and country.

## 📈 Analytical Queries

### 1️⃣ Monthly Financial Summary
- Monthly revenue and cost trends
- Gross profit calculation
- Gross margin (%)
- Month-over-month profit growth

📄 SQL: `02_financial_summary.sql`

📷 Output: `query2_financial_summary.png`

### 2️⃣ Profitability by Product
- Revenue by product
- Gross profit by product
- Gross margin
- Product ranking by profitability

📄 SQL: `03_product_profitability.sql`

📷 Output: `query3_product_profitability.png`

### 3️⃣ Segment Contribution Analysis
- Revenue and profit by customer segment
- Percentage contribution to total revenue
- Portfolio mix view using window functions

📄 SQL: `04_segment_contribution.sql`

📷 Output: `query4_segment_contribution.png`

## ⚠️ Disclaimer
This project uses **synthetic data** and does not represent real customer information.
