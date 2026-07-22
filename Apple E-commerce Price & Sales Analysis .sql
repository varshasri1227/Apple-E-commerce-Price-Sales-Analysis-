CREATE DATABASE Apple_Ecommerce_Analytics;

SELECT TOP 10 *
FROM [dbo].[apple_ecommerce_cleaned (1)];

SELECT
    COUNT(*) AS Total_Products,
    COUNT(DISTINCT Model_Name) AS Unique_Models,
    AVG(Current_Price_USD) AS Avg_Current_Price,
    AVG(Discount_Pct) AS Avg_Discount,
    AVG(Rating) AS Avg_Rating,
    AVG(Reviews_Count) AS Avg_Reviews
FROM [dbo].[apple_ecommerce_cleaned (1)];

SELECT
    Platform,
    COUNT(*) AS Total_Products,
    AVG(Current_Price_USD) AS Avg_Current_Price,
    AVG(Discount_Pct) AS Avg_Discount,
    AVG(Rating) AS Avg_Rating,
    AVG(Reviews_Count) AS Avg_Reviews
FROM [dbo].[apple_ecommerce_cleaned (1)]
GROUP BY Platform
ORDER BY Avg_Current_Price DESC;

SELECT
    Product_Category,
    COUNT(*) AS Total_Products,
    AVG(Current_Price_USD) AS Avg_Current_Price,
    AVG(Discount_Pct) AS Avg_Discount,
    AVG(Rating) AS Avg_Rating,
    AVG(Reviews_Count) AS Avg_Reviews
FROM [dbo].[apple_ecommerce_cleaned (1)]
GROUP BY Product_Category
ORDER BY Avg_Current_Price DESC;

SELECT
    Condition,
    COUNT(*) AS Total_Products,
    AVG(Current_Price_USD) AS Avg_Current_Price,
    AVG(Discount_Pct) AS Avg_Discount,
    AVG(Rating) AS Avg_Rating,
    AVG(Reviews_Count) AS Avg_Reviews
FROM [dbo].[apple_ecommerce_cleaned (1)]
GROUP BY Condition
ORDER BY Avg_Current_Price DESC;

SELECT
    Stock_Status,
    COUNT(*) AS Total_Products,
    AVG(Current_Price_USD) AS Avg_Current_Price,
    AVG(Discount_Pct) AS Avg_Discount,
    AVG(Rating) AS Avg_Rating,
    AVG(Reviews_Count) AS Avg_Reviews
FROM [dbo].[apple_ecommerce_cleaned (1)]
GROUP BY Stock_Status
ORDER BY Avg_Discount DESC;

SELECT
    Sale_Event,
    COUNT(*) AS Total_Products,
    AVG(Current_Price_USD) AS Avg_Current_Price,
    AVG(Discount_Pct) AS Avg_Discount,
    AVG(Rating) AS Avg_Rating,
    AVG(Reviews_Count) AS Avg_Reviews
FROM [dbo].[apple_ecommerce_cleaned (1)]
GROUP BY Sale_Event
ORDER BY Avg_Discount DESC;

SELECT
    Platform,
    Product_Category,
    COUNT(*) AS Total_Products,
    AVG(Current_Price_USD) AS Avg_Current_Price,
    AVG(Discount_Pct) AS Avg_Discount,
    AVG(Rating) AS Avg_Rating
FROM [dbo].[apple_ecommerce_cleaned (1)]
GROUP BY Platform, Product_Category
ORDER BY Platform, Avg_Current_Price DESC;


