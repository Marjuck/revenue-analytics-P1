SELECT
    customer_id,
    ROUND(SUM(line_revenue), 2) AS total_revenue,
    COUNT(DISTINCT invoice_no) AS order_count,
    ROUND(SUM(line_revenue) * 1.0 / COUNT(DISTINCT invoice_no), 2) AS revenue_per_order
FROM retail_clean
GROUP BY customer_id
ORDER BY total_revenue DESC;
