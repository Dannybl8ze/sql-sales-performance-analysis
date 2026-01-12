WITH monthly_revenue AS (
    SELECT
        DATE_FORMAT(order_date, '%Y-%m') AS order_month,
        SUM(order_amount) AS current_month_revenue
    FROM orders
    GROUP BY DATE_FORMAT(order_date, '%Y-%m')
),
lagged_revenue AS (
    SELECT
        order_month,
        current_month_revenue,
        LAG(current_month_revenue) OVER (ORDER BY order_month) AS previous_month_revenue
    FROM monthly_revenue
)
SELECT
    order_month,
    current_month_revenue,
    previous_month_revenue,
    current_month_revenue - previous_month_revenue AS revenue_difference,
    ROUND(
    ((current_month_revenue - previous_month_revenue) / NULLIF(previous_month_revenue, 0)) * 100,
    2
    ) AS percentage_change
FROM lagged_revenue
ORDER BY order_month;
