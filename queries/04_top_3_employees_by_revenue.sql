SELECT
    employee_id,
    employee_name,
    revenue
FROM (
    SELECT
        e.employee_id,
        e.employee_name,
        SUM(o.order_amount) AS revenue,
        DENSE_RANK() OVER (
            ORDER BY SUM(o.order_amount) DESC
        ) AS revenue_rank
    FROM orders o
    JOIN employees e
        ON o.employee_id = e.employee_id
    GROUP BY e.employee_id, e.employee_name
) ranked_employees
WHERE revenue_rank <= 3;
