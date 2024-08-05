/* Data Cleaning Checklist
-- 1. Remove Duplicates
-- 2. Standardize the Data
-- 3. Null values or Blank values
-- 4. Remove any Columns
*/

--Remove Duplicates
-- 
---Step 1: Create duplicate table; Staging original dataset
CREATE TABLE supermarket_sales_staging
(LIKE supermarket_sales INCLUDING ALL);
---Step 2: Insert identical data into duplicate table
INSERT INTO supermarket_sales_staging
SELECT *
FROM supermarket_sales;

--Scanning for duplicates
WITH duplicate_cte AS (
    SELECT 
    *,
    ROW_NUMBER() OVER (
        PARTITION BY invoice_id, branch, city, customer_type, gender, product_line, unit_price, quantity, tax_5, total_taxincluded, date_of_purchase, purchase_time, payment_type, cogs, gross_margin_percentage, gross_income, rating) AS row_num
FROM supermarket_sales_staging
)

SELECT *
FROM duplicate_cte
WHERE row_num > 1;

--Standardizing Data
SELECT 
    city,
    TRIM(city)
FROM supermarket_sales_staging;

UPDATE supermarket_sales_staging
SET city = TRIM(city);

SELECT DISTINCT product_line
FROM supermarket_sales_staging

SELECT *
FROM supermarket_sales_staging 

--Null values or Blank values
---N/A

--Remove any Columns
--N/A


Sales Performance and Trends:

How does sales revenue vary between different branches?
Are there noticeable seasonal trends in sales volume or revenue?
What is the overall trend in sales over the analyzed period?

Product Analysis:

Which product lines contribute the most to total revenue?
Are there particular products that consistently perform well across different branches?
How does unit price affect sales volume or revenue for different product lines?

Time Series Analysis:

Is there a monthly or weekly pattern in sales data?
Are there specific dates or periods that consistently show higher sales?