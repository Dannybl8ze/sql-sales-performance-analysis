SELECT 
    c.customer_id, 
    c.name, 
    COALESCE(SUM(o.order_amount), 0) AS total_spend
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spend DESC;
