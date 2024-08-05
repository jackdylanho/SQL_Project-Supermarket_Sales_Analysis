

--Average Transaction Value
SELECT 
    ROUND(SUM(total_taxincluded) / COUNT(invoice_id), 2) AS avg_transaction_value
FROM 
    supermarket_sales_staging


--Average Transaction Value by Branch
SELECT 
    branch,
    ROUND(SUM(total_taxincluded) / COUNT(invoice_id), 2) AS avg_transaction_value
FROM 
    supermarket_sales_staging
GROUP BY 
    branch;


/*
Here's the breakdown:

Branch C has the highest average transaction value among the three branches with a value of 337.10.

Branch A has the lowest average transaction value with a value of 312.35.

Branch B has an average transaction value that is in the middle, with a value of 319.87.

Overall, the average transaction values are close but show some variation, with Branch C having the highest and Branch A the lowest. The overall average transaction value of 322.97 indicates that all branches are performing close to this value.

*/