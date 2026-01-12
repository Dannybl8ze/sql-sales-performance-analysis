SELECT
    c.customer_id,
    c.name
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
HAVING
    YEAR(MIN(o.order_date)) = 2024
    AND
    YEAR(MAX(o.order_date)) = 2024;
