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

-- sub calculation on how to find how much percentage of total revenue the TOP 5 states account for 
WITH state_revenue AS 
(SELECT 
        c.customer_state, 
        CASE c.customer_state 
            WHEN 'SP' THEN 'Sao Paulo'
            WHEN 'RJ' THEN 'Rio de Janeiro'
            WHEN 'MG' THEN 'Minas Gerais'
            WHEN 'RS' THEN 'Rio Grande do Sul'
            WHEN 'PR' THEN 'Parana'
        END as state_name,
        ROUND(SUM(p.payment_value), 2) as state_total_revenue
    FROM payments p
    JOIN orders o ON o.order_id = p.order_id
    JOIN customers c ON c.customer_id = o.customer_id
    WHERE o.order_status = 'delivered'
    GROUP BY c.customer_state
),
    
top_5_states AS 
(
    SELECT ROUND(SUM(state_total_revenue),2) as top5_revenue
    FROM (
        SELECT state_total_revenue
        FROM state_revenue
        ORDER BY state_total_revenue DESC
        LIMIT 5
    )
),
    
total_revenue AS 
(SELECT ROUND(SUM(state_total_revenue), 2) as sum_total_revenue
    FROM state_revenue)

SELECT CAST(top5_revenue as INTEGER) as top5_revenue, 
CAST(sum_total_revenue as INTEGER) as sum_total_revenue,
ROUND((top5_revenue * 100.0/ sum_total_revenue), 1) as percentage_of_total
FROM top_5_states, total_revenue
    
-- most popular product categories in each region
WITH category_by_state AS(
SELECT ca.product_category_name_english, ROUND(SUM(ps.payment_value),2) as total_payment, 
c.customer_state,
  CASE c.customer_state 
        WHEN 'AC' THEN 'Acre'
        WHEN 'AL' THEN 'Alagoas'
        WHEN 'AM' THEN 'Amazonas'
        WHEN 'AP' THEN 'Amapá'
        WHEN 'BA' THEN 'Bahia'
        WHEN 'CE' THEN 'Ceará'
        WHEN 'DF' THEN 'Federal District'
        WHEN 'ES' THEN 'Espírito Santo'
        WHEN 'MA' THEN 'Maranhão'
        WHEN 'GO' THEN 'Goiás'
        WHEN 'MG' THEN 'Minas Gerais'
        WHEN 'MS' THEN 'Mato Grosso do Sul'
        WHEN 'MT' THEN 'Mato Grosso'
        WHEN 'MS' THEN 'Mato Grosso do Sul'
        WHEN 'PA' THEN 'Pará'
        WHEN 'PB' THEN 'Paraíba'
        WHEN 'PE' THEN 'Pernambuco'
        WHEN 'PI' THEN 'Piauí'
        WHEN 'PR' THEN 'Paraná'
        WHEN 'RJ' THEN 'Rio de Janeiro'
        WHEN 'RN' THEN 'Rio Grande do Norte'
        WHEN 'RO' THEN 'Rondônia'
        WHEN 'RS' THEN 'Rio Grande do Sul'
        WHEN 'SE' THEN 'Sergipe'
        WHEN 'SP' THEN 'São Paulo'
        WHEN 'SC' THEN 'Santa Catarina'
        WHEN 'TO' THEN 'Tocantins'
    END as customer_state_full,
    ROW_NUMBER() OVER (PARTITION BY c.customer_state ORDER BY SUM(ps.payment_value) DESC) as rank
FROM products p
JOIN order_items oi  on oi.product_id = p.product_id
JOIN orders o on oi.order_id = o.order_id
JOIN customers c on c.customer_id = o.customer_id
JOIN payments ps on ps.order_id = o.order_id
JOIN category ca on ca.product_category_name = p.product_category_name
WHERE o.order_status = 'delivered'
AND p.product_category_name IS NOT NULL
GROUP BY p.product_category_name, c.customer_state
)

SELECT 
    customer_state,
    customer_state_full,
    product_category_name_english,
    total_payment,
    rank
FROM category_by_state
WHERE rank <= 3
ORDER BY customer_state, rank;







