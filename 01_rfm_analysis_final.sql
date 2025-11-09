WITH basket AS (
    SELECT orders.customer_id, 
           COUNT(order_items.order_item_id) AS total_order_items
    FROM orders 
    LEFT JOIN order_items ON order_items.order_id = orders.order_id
    WHERE orders.order_status = 'delivered' 
    GROUP BY orders.customer_id
), 
monetary AS (
    SELECT orders.customer_id, 
           SUM(order_items.price) AS total_spent
    FROM order_items
    LEFT JOIN orders ON orders.order_id = order_items.order_id
    WHERE orders.order_status = 'delivered'
    GROUP BY customer_id
),
recency AS (
    SELECT customer_id, 
           JULIANDAY('2018-10-17') - JULIANDAY(MAX(order_purchase_timestamp)) AS recency_days
    FROM orders
    WHERE order_status = 'delivered'
    GROUP BY customer_id
),
rmb_combined AS (
    SELECT basket.customer_id, basket.total_order_items, recency.recency_days, monetary.total_spent
    FROM basket 
    JOIN recency ON recency.customer_id = basket.customer_id
    JOIN monetary ON monetary.customer_id = basket.customer_id
),
customer_segments AS (
    SELECT *, 
    CASE 
        -- VIP: Spent $300+
        WHEN total_spent >= 300 AND recency_days <= 120 THEN 'VIP Active'
        WHEN total_spent >= 300 AND recency_days > 120 AND recency_days <= 270 THEN 'VIP Cooling Down'
        WHEN total_spent >= 300 AND recency_days > 270 THEN 'VIP At Risk'
        
        -- Mid-Value: Spent $100-299
        WHEN total_spent >= 100 AND total_spent < 300 AND recency_days <= 120 THEN 'Mid-Value Active'
        WHEN total_spent >= 100 AND total_spent < 300 AND recency_days > 120 AND recency_days <= 270 THEN 'Mid-Value Cooling'
        WHEN total_spent >= 100 AND total_spent < 300 AND recency_days > 270 THEN 'Mid-Value At Risk'
        
        -- Low-Value: Spent < $100
        WHEN total_spent < 100 AND recency_days <= 120 THEN 'Low-Value Recent'
        WHEN total_spent < 100 AND recency_days > 270 THEN 'Low-Value Churned'
        
        ELSE 'Others'
    END AS segment
    FROM rmb_combined
)
SELECT segment, 
       COUNT(*) as customer_count,
       ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 1) as customer_pct,
       ROUND(SUM(total_spent)) as total_revenue,
       ROUND(SUM(total_spent) * 100.0 / SUM(SUM(total_spent)) OVER (), 1) as revenue_pct,
       ROUND(AVG(total_spent), 2) as avg_spent,
       ROUND(AVG(total_order_items), 1) as avg_items,
       ROUND(AVG(recency_days), 1) as avg_recency_days
FROM customer_segments
GROUP BY segment
ORDER BY total_revenue DESC;
