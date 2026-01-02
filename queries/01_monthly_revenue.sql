-- Monthly Revenue Analysis (MySQL)

SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS order_month,
    SUM(order_amount) AS total_revenue
FROM orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY order_month;
