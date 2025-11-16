WITH user_cohorts AS (
SELECT customer_id, MIN(order_purchase_timestamp) as initial_date 
FROM orders
WHERE order_status = 'delivered'
GROUP BY customer_id), 

user_activity_with_cohorts AS (
    SELECT 
    user_cohorts.initial_date, 
    orders.customer_id, 
    orders.order_purchase_timestamp,
    (STRFTIME('%Y', orders.order_purchase_timestamp) - STRFTIME('%Y', user_cohorts.initial_date)) * 12 
    + 
    (STRFTIME('%m', orders.order_purchase_timestamp) - STRFTIME('%m', user_cohorts.initial_date)) 
    as months_since_first_purchase,
    DATE(STRFTIME('%Y-%m', user_cohorts.initial_date) || '-01') as cohort_month
    FROM orders 
    JOIN user_cohorts on orders.customer_id = user_cohorts.customer_id
    WHERE orders.order_status = 'delivered'
), 

cohort_retention_rate AS (
    SELECT 
    cohort_month,
    months_since_first_purchase,
    COUNT(customer_id) as customer_count
    FROM user_activity_with_cohorts
    GROUP BY user_activity_with_cohorts.cohort_month, months_since_first_purchase
),

cohort_sizes as (
    SELECT cohort_month, customer_count as total_customers
    FROM cohort_retention_rate
    WHERE months_since_first_purchase = 0)

SELECT crr.cohort_month, crr.months_since_first_purchase, 
crr.customer_count, cohort_sizes.total_customers,
(crr.customer_count * 100.0 / cohort_sizes.total_customers) as retention_rate, 
SUM(crr.customer_count) / 23 as average_cohort_size
FROM cohort_retention_rate crr
JOIN cohort_sizes ON crr.cohort_month = cohort_sizes.cohort_month
