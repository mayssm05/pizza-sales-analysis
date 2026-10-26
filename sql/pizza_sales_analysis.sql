-- Pizza Sales Analysis
-- Tutorial-guided learning project based on the Data Tutorials series.
-- SQL Server syntax. Queries transcribed and formatted from the supplied PDF.

-- 1. Total revenue
SELECT SUM(total_price) AS total_revenue
FROM pizza_sales;

-- 2. Average order value
SELECT SUM(total_price) / COUNT(DISTINCT order_id) AS average_order_value
FROM pizza_sales;

-- 3. Total pizzas sold
SELECT SUM(quantity) AS total_pizzas_sold
FROM pizza_sales;

-- 4. Total orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales;

-- 5. Average pizzas per order
SELECT CAST(
    CAST(SUM(quantity) AS DECIMAL(10, 2))
    / CAST(COUNT(DISTINCT order_id) AS DECIMAL(10, 2))
    AS DECIMAL(10, 2)
) AS average_pizzas_per_order
FROM pizza_sales;

-- 6. Daily trends for total orders
SELECT
    DATENAME(WEEKDAY, order_date) AS order_day,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY DATENAME(WEEKDAY, order_date);

-- 7. Hourly trends for total orders
SELECT
    DATEPART(HOUR, order_time) AS order_hour,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY DATEPART(HOUR, order_time)
ORDER BY DATEPART(HOUR, order_time);

-- 8. Percentage of sales by pizza category in January
SELECT
    pizza_category,
    SUM(total_price) AS total_sales,
    SUM(total_price) * 100.0 / (
        SELECT SUM(total_price)
        FROM pizza_sales
        WHERE MONTH(order_date) = 1
    ) AS percentage
FROM pizza_sales
WHERE MONTH(order_date) = 1
GROUP BY pizza_category
ORDER BY pizza_category;

-- 9. Percentage of sales by pizza size
SELECT
    pizza_size,
    CAST(SUM(total_price) AS DECIMAL(10, 2)) AS total_sales,
    CAST(
        SUM(total_price) * 100.0
        / (SELECT SUM(total_price) FROM pizza_sales)
        AS DECIMAL(10, 2)
    ) AS percentage
FROM pizza_sales
GROUP BY pizza_size
ORDER BY percentage DESC;

-- 10. Total pizzas sold by category
SELECT
    pizza_category,
    SUM(quantity) AS total_quantity_sold
FROM pizza_sales
GROUP BY pizza_category
ORDER BY total_quantity_sold DESC;

-- 11. Top 5 best sellers by pizzas sold
SELECT TOP 5
    pizza_name,
    SUM(quantity) AS total_pizzas_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_pizzas_sold DESC;

-- 12. Bottom 5 sellers by pizzas sold
SELECT TOP 5
    pizza_name,
    SUM(quantity) AS total_pizzas_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_pizzas_sold ASC;
