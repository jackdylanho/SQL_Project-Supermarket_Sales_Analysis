--Number of sales by branch
SELECT
    branch,
    COUNT(product_line)
FROM 
    supermarket_sales_staging
GROUP BY
    branch


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

Branch A has the highest total sales among the three branches with a total of 340.

Branch B and Branch C have nearly identical total sales with 332 and 328 respectively. This indicates a uniform distribution of sales between these two branches.

Overall Top-Selling Product Line: Fashion Accessories is the most popular product line across all branches, with a total of 178 sales.

Top-Selling Product Lines by Branch:

Branch A: Home and Lifestyle leads with 65 sales.
Branch B: Sports and Travel leads with 62 sales.
Branch C: Food and Beverages leads with 66 sales.

Product Line Popularity:

Fashion Accessories: Most popular overall with 178 sales.
Electronic Accessories: Second most popular overall with 170 sales.
Home and Lifestyle: Most popular in Branch A.
Sports and Travel: Most popular in Branch B.
Food and Beverages: Most popular in Branch C.
*/


