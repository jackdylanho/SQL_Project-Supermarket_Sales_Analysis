--Peak Revenue Times by Branch
SELECT  
    branch,
    EXTRACT(HOUR FROM purchase_time) AS hour,
    SUM(total_taxincluded)
FROM
    supermarket_sales_staging
GROUP BY
    branch,
    hour
ORDER BY
    branch,
    SUM(total_taxincluded) DESC

    
--Peak Revenue Times by Branch, Product Line
    SELECT 
        branch,
        product_line,
        EXTRACT(HOUR FROM purchase_time) AS hour,
        SUM(total_taxincluded)
    FROM 
        supermarket_sales_staging
    GROUP BY 
        branch, 
        product_line,
        hour
    ORDER BY
        branch,
        SUM(total_taxincluded) DESC