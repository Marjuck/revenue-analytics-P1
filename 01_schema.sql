-- PostgreSQL schema for the UCI Online Retail dataset

DROP TABLE IF EXISTS online_retail;

CREATE TABLE online_retail (
    invoice_no      TEXT,
    stock_code      TEXT,
    description     TEXT,
    quantity        INTEGER,
    invoice_date    TIMESTAMP,
    unit_price      NUMERIC(12,2),
    customer_id     TEXT,
    country         TEXT
);

-- Recommended indexes after load
CREATE INDEX IF NOT EXISTS idx_online_retail_customer_id ON online_retail(customer_id);
CREATE INDEX IF NOT EXISTS idx_online_retail_invoice_date ON online_retail(invoice_date);
CREATE INDEX IF NOT EXISTS idx_online_retail_country ON online_retail(country);
