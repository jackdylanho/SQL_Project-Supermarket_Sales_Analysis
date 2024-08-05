--Peak Revenue Month by Branch
SELECT 
    branch,
    EXTRACT(MONTH FROM date_of_purchase) AS month,
    SUM(total_taxincluded)
FROM 
    supermarket_sales_staging
GROUP BY 
    branch, 
    month
ORDER BY 
    branch, 
    SUM(total_taxincluded) DESC


--Peak Revenue Month by Branch, Product Line 
SELECT 
        branch,
        product_line,
        EXTRACT(MONTH FROM date_of_purchase) AS month,
        SUM(total_taxincluded)
    FROM 
        supermarket_sales_staging
    GROUP BY 
        branch, 
        product_line,
        month
    ORDER BY
        branch,
        SUM(total_taxincluded) DESC
