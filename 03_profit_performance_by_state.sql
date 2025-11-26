-- To Find the 5 States with TOP revenue
SELECT 
    c.customer_state, 
    CASE c.customer_state 
        WHEN 'SP' THEN 'Sao Paulo'
        WHEN 'RJ' THEN 'Rio de Janeiro'
        WHEN 'MG' THEN 'Minas Gerais'
        WHEN 'RS' THEN 'Rio Grande do Sul'
        WHEN 'PR' THEN 'Parana'
    END as state_name,
    ROUND(SUM(p.payment_value),3) as total_revenue
FROM payments p
JOIN orders o ON o.order_id = p.order_id
JOIN customers c ON c.customer_id = o.customer_id
WHERE o.order_status = 'delivered'
GROUP BY c.customer_state
ORDER BY total_revenue DESC
LIMIT 5;
