-- Create supermarket_sales table with primary key
CREATE TABLE supermarket_sales
(
    invoice_id VARCHAR(20) PRIMARY KEY,
    branch TEXT,
    city TEXT,
    customer_type TEXT,
    gender TEXT,
    product_line TEXT,
    unit_price NUMERIC,
    quantity INT,
    tax_5 NUMERIC,
    total_taxincluded NUMERIC,
    date_of_purchase DATE,
    purchase_time TIME,
    payment_type TEXT,
    cogs NUMERIC,
    gross_margin_percentage NUMERIC,
    gross_income NUMERIC,
    rating NUMERIC
);

--Alter date_of_purchase Date format
    -- Step 1: Add a temporary text column
ALTER TABLE supermarket_sales ADD COLUMN temp_date TEXT;
    -- Step 2: Copy data to the temporary column
UPDATE supermarket_sales SET temp_date = date_of_purchase::TEXT;
    -- Step 3: Update the date_of_purchase column with correct format
UPDATE supermarket_sales SET date_of_purchase = TO_DATE(temp_date, 'MM/DD/YYYY');
    -- Step 4: Drop the temporary column
ALTER TABLE supermarket_sales DROP COLUMN temp_date;

-- Set ownership of the table to the postgres user
ALTER TABLE supermarket_sales OWNER to postgres;

