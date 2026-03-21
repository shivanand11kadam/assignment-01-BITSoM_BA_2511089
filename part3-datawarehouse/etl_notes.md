## ETL Decisions

### Decision 1 — Date Standardization
Problem: The dataset had dates in different formats, which makes it difficult to analyze data month-wise or compare trends over time.  
Resolution: I converted all dates into a single format (YYYY-MM-DD) so that they are consistent. I also created separate columns for month and year in the dim_date table, which makes it easier to run analytical queries.

### Decision 2 — Category Text Casing
Problem: Product categories were written in different formats like 'electronics', 'ELECTRONICS', and 'Electronics'. This would lead to incorrect grouping in queries.  
Resolution: I standardized all category values into a consistent format before inserting them into the dim_product table. This ensures correct aggregation during analysis.

### Decision 3 — Handling Missing/Invalid Data
Problem: Some records may contain missing values or invalid data like NULL fields or incorrect quantities, which can affect analysis results.  
Resolution: I removed such records during the cleaning process and ensured that important columns like quantity and total amount do not have NULL values. I also used NOT NULL constraints in the fact table to maintain data quality.