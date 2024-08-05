--Overall top-selling product line
SELECT 
    product_line,
    COUNT(product_line)
FROM 
    supermarket_sales_staging
GROUP BY
    product_line;


--Top-selling product line by Branch
SELECT 
    branch,
    product_line,
    COUNT(product_line) AS product_line_sales
FROM 
    supermarket_sales_staging
GROUP BY
    branch,
    product_line
ORDER BY
    branch,
    product_line_sales DESC;

/*
Here's the breakdown:

Branch C has the highest total sales among the three branches with a total of 390.

Branch A and Branch B have nearly identical total sales with 341 and 338 respectively. This indicates a uniform distribution of sales between these two branches.

Top-Selling Product Lines by Branch:
    Branch A: Home and Lifestyle leads with 65 sales.
    Branch B: Electronic Accessories lead with 61 sales.
    Branch C: Home and Lifestyle leads with 70 sales.

Overall Top-Selling Product Line:
    Home and Lifestyle is the most popular product line across all branches, with a total of 197 sales.

Product Line Popularity:
    Home and Lifestyle: Most popular in both Branch A and Branch C.
    Electronic Accessories: Most popular in Branch B and the second most popular overall.
*/


