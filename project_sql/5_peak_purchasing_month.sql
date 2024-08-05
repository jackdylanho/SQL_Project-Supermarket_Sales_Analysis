
--Peak Purchasing Month by Branch
SELECT 
    branch,
    EXTRACT(MONTH FROM date_of_purchase) AS month,
    COUNT(invoice_id) AS sales_count
FROM 
    supermarket_sales_staging
GROUP BY 
    branch, 
    month
ORDER BY 
    branch, 
    sales_count DESC,
    month


--Peak Purchasing Month by Branch, Product Line 
SELECT 
        branch,
        product_line,
        EXTRACT(MONTH FROM date_of_purchase) AS month,
        COUNT(invoice_id) AS sales_count
    FROM 
        supermarket_sales_staging
    WHERE
        branch = 'A' 
        AND product_line IN ('Home and lifestyle' , 'Electronic accessories')
    GROUP BY 
        branch, 
        product_line,
        month
    ORDER BY
        branch,
        sales_count DESC

/*Here's the breakdown:

Variability: Both overall monthly sales and product line sales exhibit variability, with overall monthly sales showing greater variability.
Central Tendency: The average sales are higher for overall monthly sales compared to product line sales, indicating that total sales are driven by contributions from multiple product lines.
Distribution: The distributions suggest a few high-performing months and product lines skew the data, highlighting the importance of targeting these peaks for strategic planning.


Overall Insight:

    Branch-specific Peaks:
        All branches (A, B, and C) experience peak sales in January, suggesting a strong start to the year, possibly due to post-holiday shopping or New Year promotions.

    Product Line Contributions:
        In Branch A, multiple product lines such as Electronic Accessories, Fashion Accessories, and Home and Lifestyle peak in January, indicating diverse customer interest in the early months of the year.
        Food and Beverages and Health and Beauty peak in March, showing a different trend compared to other product lines.

    Seasonal Trends:
        The data suggests a seasonal trend where January is a strong sales month across branches, likely driven by New Year sales or leftover holiday shopping.
        March appears to be significant for food-related and health-related purchases, possibly due to the end of the first quarter or seasonal changes.

    Sales Strategy Insights:
        Branches should focus on robust inventory and staffing in January to handle the peak sales period.
        Special promotions and marketing campaigns can be planned for January to capitalize on high customer traffic.
        March promotions could focus on food and health products, aligning with the observed sales peaks in these categories.

    Marketing and Product Placement:
        Highlight electronic, fashion, and home products prominently in January to maximize sales.
        Shift focus to food and health products in March to match customer purchasing patterns.

Recommendations

    For Branch A, B, and C:
    Prepare for high sales volumes in January with appropriate staffing, inventory, and marketing campaigns.
    Conduct targeted promotions for electronic, fashion, and home products in January.
    Focus on food and health products with special offers and marketing in March.