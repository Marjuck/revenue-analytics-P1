WITH customer_revenue AS (
    SELECT
        customer_id,
        ROUND(SUM(line_revenue), 2) AS total_revenue
    FROM retail_clean
    GROUP BY customer_id
)
SELECT
    customer_id,
    total_revenue,
    ROUND((total_revenue * 100.0 / SUM(total_revenue) OVER ())::numeric, 2) AS revenue_share_pct,
    RANK() OVER (ORDER BY total_revenue DESC) AS revenue_rank
FROM customer_revenue
ORDER BY total_revenue DESC;
