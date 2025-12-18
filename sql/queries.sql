--Total sales per product
SELECT product, SUM(total_amount) AS total_sales
FROM sales
GROUP BY product;

--Top selling product(by revenue)
SELECT product, SUM(total_amount) AS total_sales
FROM sales
GROUP BY product
ORDER BY total_sales DESC
LIMIT 1;

--Average order value
SELECT AVG(total_amount) AS avg_order_value
FROM sales;
