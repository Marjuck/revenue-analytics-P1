-- Example load notes (adjust CSV path locally)
-- \copy online_retail FROM 'Cleaned_UCI_Online_Sale_Dataset.csv' WITH (FORMAT csv, HEADER true)

-- Basic cleanup assumptions you may choose to apply:
-- 1. Keep only positive quantities
-- 2. Keep only positive unit prices
-- 3. Exclude null or blank customer_id for customer-level analysis

-- Example cleaned view
CREATE OR REPLACE VIEW retail_clean AS
SELECT
    invoice_no,
    stock_code,
    description,
    quantity,
    invoice_date,
    unit_price,
    customer_id,
    country,
    (quantity * unit_price) AS line_revenue
FROM online_retail
WHERE quantity > 0
  AND unit_price > 0
  AND customer_id IS NOT NULL
  AND customer_id <> '';
