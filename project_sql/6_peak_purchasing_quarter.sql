/* Insights to Explore

1. Overall Quarterly Sales by Branch
We'll identify the quarters with the highest sales counts for each branch from the first dataset.

2. Product Line Performance
We'll analyze sales by product line across different quarters from the second dataset.

3. Comparison of Quarterly Peaks
We'll compare the peak quarters identified in both datasets.
*/

--Peak Purchasing Quarter by Branch
SELECT 
    branch,
    EXTRACT(QUARTER FROM date_of_purchase) AS qtr,
    COUNT(invoice_id) AS sales_count
FROM 
    supermarket_sales_staging
GROUP BY 
    branch, 
    qtr
ORDER BY 
    branch, 
    sales_count DESC,
    qtr

--Peak Purchasing Quarter by Branch, Product Line 
SELECT 
    branch,
    product_line,
    EXTRACT(QUARTER FROM date_of_purchase) AS qtr,
    COUNT(invoice_id) AS sales_count
FROM 
    supermarket_sales_staging
GROUP BY 
    branch, 
    product_line,
    qtr
ORDER BY 
    branch, 
    sales_count DESC,
    qtr



/* Overall Insight:

Branch-specific Peaks:

All branches (A, B, and C) experience peak sales in the first quarter, indicating a strong start to the year, likely influenced by post-holiday shopping or New Year promotions.
Product Line Contributions:

In Branch A, multiple product lines such as Food and Beverages, Electronic Accessories, and Home and Lifestyle peak in Q1, showing a broad interest from customers across various categories at the beginning of the year.
The peak sales of different product lines in Q1 suggest that Q1 promotions and marketing campaigns should focus on a variety of products.
Seasonal Trends:

The data suggests a strong seasonal trend where Q1 is the highest sales period across branches, likely driven by New Year sales or leftover holiday shopping.
Subsequent quarters show a significant drop in sales, highlighting the importance of capitalizing on the Q1 peak.
Sales Strategy Insights:

Branches should prepare for high sales volumes in Q1 with appropriate staffing, inventory, and marketing campaigns.
Special promotions and marketing campaigns can be planned for Q1 to maximize sales.
Focus on promoting a wide range of product lines during Q1 to cater to diverse customer preferences.
Marketing and Product Placement:

Highlight food, electronic, home, and lifestyle products prominently in Q1 to maximize sales.
Shift focus to promoting other product lines in subsequent quarters to balance the sales distribution.
