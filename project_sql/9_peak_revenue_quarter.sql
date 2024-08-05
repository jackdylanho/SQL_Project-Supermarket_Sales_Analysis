--Peak Revenue Quarter by Branch
SELECT 
    branch,
    EXTRACT(QUARTER FROM date_of_purchase) AS qtr,
    SUM(total_taxincluded)
FROM 
    supermarket_sales_staging
GROUP BY 
    branch, 
    qtr
ORDER BY 
    branch, 
    SUM(total_taxincluded) DESC

--Peak Purchasing Quarter by Branch, Product Line 
SELECT 
    branch,
    product_line,
    EXTRACT(QUARTER FROM date_of_purchase) AS qtr,
    SUM(total_taxincluded)
FROM 
    supermarket_sales_staging
GROUP BY 
    branch, 
    product_line,
    qtr
ORDER BY 
    branch, 
    SUM(total_taxincluded) DESC

