SELECT 
    e.department, 
    SUM(o.order_amount) AS total_revenue
FROM orders o
LEFT JOIN employees e
    ON o.employee_id = e.employee_id
GROUP BY e.department
ORDER BY total_revenue DESC;
