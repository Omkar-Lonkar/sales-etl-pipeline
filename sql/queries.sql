SELECT product, SUM(total_amount) AS total_sales
FROM sales
GROUP BY product;

SELECT product, SUM(total_amount) AS total_sales
FROM sales
GROUP BY product
ORDER BY total_sales DESC
LIMIT 1;

SELECT AVG(total_amount) AS avg_order_value
FROM sales;
