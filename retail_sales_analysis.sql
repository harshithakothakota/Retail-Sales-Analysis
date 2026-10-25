

USE retail_sales_analytics;

-- 1. Total number of records
SELECT COUNT(*) AS total_rows
FROM superstore;

-- 2. Check the dataset columns
DESCRIBE superstore;

-- 3. Preview the sales and profit data
SELECT
    `Order ID`,
    `Product Name`,
    Sales,
    Quantity,
    Discount,
    Profit
FROM superstore
LIMIT 10;

-- 4. Overall business performance
SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT `Order ID`) AS total_orders,
    COUNT(DISTINCT `Customer ID`) AS unique_customers,
    ROUND(SUM(Sales), 2) AS total_revenue,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(AVG(Discount), 2) AS average_discount,
    SUM(Quantity) AS units_sold
FROM superstore;

-- 5. Category performance
SELECT
    Category,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    SUM(Quantity) AS units_sold
FROM superstore
GROUP BY Category
ORDER BY total_sales DESC;

-- 6. Regional sales and profit performance
SELECT
    Region,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    COUNT(DISTINCT `Order ID`) AS total_orders
FROM superstore
GROUP BY Region
ORDER BY total_sales DESC;

-- 7. Customer segment performance
SELECT
    Segment,
    COUNT(DISTINCT `Customer ID`) AS unique_customers,
    COUNT(DISTINCT `Order ID`) AS total_orders,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2)
        AS profit_margin_pct
FROM superstore
GROUP BY Segment
ORDER BY total_sales DESC;

-- 8. Monthly sales and profit trends
SELECT
    DATE_FORMAT(STR_TO_DATE(`Order Date`, '%m/%d/%Y'), '%Y-%m')
        AS sales_month,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore
GROUP BY sales_month
ORDER BY sales_month;

-- 9. Top 10 products by sales
SELECT
    `Product Name`,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    SUM(Quantity) AS units_sold
FROM superstore
GROUP BY `Product Name`
ORDER BY total_sales DESC
LIMIT 10;

-- 10. Impact of discounts on sales and profit
SELECT
    Discount,
    COUNT(*) AS transaction_records,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore
GROUP BY Discount
ORDER BY Discount;
