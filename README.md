# Revenue & User Behavior Analysis (PostgreSQL)

Portfolio project tailored for Data Analyst roles like Optimizely.

## Project Objective
Analyze a real-world online retail dataset to answer revenue, customer behavior, and channel-performance questions that map closely to a commercial analytics role:
- revenue trend reporting
- top customer / revenue concentration analysis
- country and channel segmentation
- cohort-style repeat purchase logic
- operational reporting queries in PostgreSQL

## Dataset
This project is designed around the **UCI Online Retail** dataset and the public cleaned version referenced below.

### Source
- UCI Online Retail dataset: https://archive.ics.uci.edu/dataset/352/online%2Bretail
- Cleaned public CSV reference: https://github.com/eaintkyawthmu/UCI_Online_Retail_Dataset_Cleaned_Version/blob/master/Cleaned_UCI_Online_Sale_Dataset.csv

## Recommended GitHub Repository Structure
```text
optimizely-revenue-analytics/
├── README.md
├── docs/
│   ├── business_questions.md
│   ├── data_dictionary.md
│   └── github_setup.md
├── sql/
│   ├── 01_schema.sql
│   ├── 02_load_notes.sql
│   ├── 03_total_revenue.sql
│   ├── 04_revenue_by_customer.sql
│   ├── 05_revenue_concentration.sql
│   ├── 06_monthly_revenue_trend.sql
│   ├── 07_country_revenue.sql
│   ├── 08_top_customers.sql
│   ├── 09_repeat_purchase_rate.sql
│   └── 10_rfm_base.sql
└── assets/
    └── dashboard_wireframe.md
```

## Business Questions
1. What is total revenue and how has it changed by month?
2. Which countries generate the highest revenue?
3. Which customers contribute the largest share of total revenue?
4. How concentrated is revenue among top customers?
5. What share of customers are repeat purchasers?
6. Which customer segments appear most valuable for retention or upsell?

## Tech Stack
- PostgreSQL
- SQL window functions
- CTEs
- business metrics / revenue diagnostics
- optional Power BI / Tableau layer
- AI-assisted analysis workflow

## How to Use This Project
1. Download the dataset from the source above.
2. Load it into PostgreSQL using the schema in `sql/01_schema.sql`.
3. Run the query files in sequence.
4. Export result tables into a BI tool for visuals.
5. Use the business notes in `docs/business_questions.md` to write your case study summary.

## Resume Bullet Ideas
- Built a PostgreSQL revenue analytics project on a real-world retail dataset, using CTEs, window functions, cohort-style repeat purchase logic, and customer concentration analysis.
- Designed SQL reporting workflows for revenue trends, top-customer identification, and segmentation analysis aligned to commercial decision-making.
- Structured analyst-ready business documentation and GitHub portfolio assets to present insights clearly to non-technical stakeholders.

## AI Skill Layer
Suggested workflow:
1. Write base SQL manually.
2. Use AI to validate edge cases and explain results.
3. Use AI to convert findings into executive summaries.
4. Use AI to draft dashboard annotations and recruiter-friendly project descriptions.
