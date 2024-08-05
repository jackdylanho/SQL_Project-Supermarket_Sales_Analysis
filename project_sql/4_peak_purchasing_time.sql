/*
Insights to Explore

1. Overall Peak Hours by Branch:
    - Identify the peak sales hours for each branch.

2. Product Line Performance:
    - Analyze the performance of different product lines across various hours.
    - Identify which product lines perform best at different times of the day.

3. Comparison of Peak Hours:
    - Compare the overall peak hours with product line-specific peak hours to understand if certain product lines drive the peak times.
*/

--Peak Sales Times by Branch
SELECT 
    branch,
    EXTRACT(HOUR FROM purchase_time) AS hour,
    COUNT(invoice_id) AS sales_count
FROM 
    supermarket_sales_staging
GROUP BY 
    branch, 
    EXTRACT(HOUR FROM purchase_time)
ORDER BY 
    branch, 
    sales_count DESC

    
--Peak Sales Times by Branch, Product Line
    SELECT 
        branch,
        product_line,
        EXTRACT(HOUR FROM purchase_time) AS hour,
        COUNT(invoice_id) AS sales_count
    FROM 
        supermarket_sales_staging
    GROUP BY 
        branch, 
        product_line,
        EXTRACT(HOUR FROM purchase_time)
    ORDER BY
        branch,
        sales_count DESC

/*

Overall Insight:

    Branch-specific Peaks:
        Branch A and Branch C both have their peak hours at 10:00, suggesting morning is a crucial time for sales in these branches.
        Branch B peaks in the evening at 19:00, indicating a different customer behavior pattern compared to Branch A and C.

    Product Line Contributions:
        In Branch A, Electronic Accessories and Food and Beverages contribute significantly to peak times.
        Home and Lifestyle products have a distinct peak at 15:00, separate from the overall branch peak, indicating a specific customer segment.

    Customer Behavior:
        Customers in Branch A and C prefer morning shopping for electronic accessories, aligning with their overall peak times.
        Branch B’s evening peak suggests customers in this region may prefer shopping after work or later in the day.

    Sales Strategy Insights:
        Branches could optimize staffing and inventory management around these peak times to ensure better customer service and higher sales.
        Targeted promotions or special offers could be aligned with these peak hours to maximize sales.

    Marketing and Product Placement:
        Marketing campaigns can be scheduled to target peak hours, especially for the top-performing product lines.
        Product placement in stores can be adjusted to highlight the best-selling items during their peak times.

Recommendations
For Branch A and C:

Enhance morning marketing efforts and ensure full stock availability for electronic accessories.
Analyze reasons for different peak times in various product lines and explore if these patterns can be optimized for better sales distribution.

For Branch B:

Focus on evening promotions and ensure staff availability during peak hours.
Investigate the factors driving the evening peak and consider if extending store hours might be beneficial.