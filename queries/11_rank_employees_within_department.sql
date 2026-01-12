WITH employee_sales AS (
    SELECT
        e.employee_id,
        e.employee_name,
        e.department,
        SUM(o.order_amount) AS total_sales
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
    total_sales,
    DENSE_RANK() OVER (
        PARTITION BY department
        ORDER BY total_sales DESC
    ) AS rank_in_department
FROM employee_sales
ORDER BY department, rank_in_department;
