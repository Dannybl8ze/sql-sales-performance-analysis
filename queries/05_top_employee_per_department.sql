WITH employee_revenue AS (
    SELECT
        e.employee_id,
        e.employee_name,
        e.department,
        SUM(o.order_amount) AS revenue,
        ROW_NUMBER() OVER (
            PARTITION BY e.department
            ORDER BY SUM(o.order_amount) DESC
        ) AS row_num
    FROM orders o
    JOIN employees e
        ON o.employee_id = e.employee_id
    GROUP BY
        e.employee_id,
        e.employee_name,
        e.department
)
SELECT
    employee_id,
    employee_name,
    department,
    revenue
FROM employee_revenue
WHERE row_num = 1;
