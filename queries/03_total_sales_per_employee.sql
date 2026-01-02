SELECT 
    e.employee_name, 
    SUM(o.order_amount) AS total_sales
FROM orders o
LEFT JOIN employees e
    ON o.employee_id = e.employee_id
GROUP BY e.employee_name
ORDER BY total_sales DESC;
