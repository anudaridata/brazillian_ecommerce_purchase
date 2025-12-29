# Braziliian ecommerce (Olist) public dataset analysis
## 1. Project overview
In this project I want to analyze the Brazillian ecommerce publicly available dataset of orders using SQLite. For visualizations, I will use PowerBI Desktop and Python. 
## 2. Dataset information
This dataset is originally from Olist store, also available at Kaggle (https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce/data). Olist store is the largest department store in Brazillian marketplace where small businesses from Brazil can use to sell their products online. The shipment is handled also by Olist logistic parners. Once, the customer receives the product, the customer gets a satisfaction survey by email regarding his/her experience and write down some comments. 

### 3.Database Schema 

The Olist dataset is comprised of 9 separate categories in CSV: 
1. olist_order_items_dataset -> renamed as order_items. Consists of 7 columns <br>
order_id - order unique identifier <br>
order_item_id - sequential number identifying number of items included in the same order. Ex: 1,2,3 <br>
product_id - product unique identifier. Long digit code mixing numbers and letters. <br>
seller_id - seller unique identifier. Long digit code mixing numbers and letters. <br>
shipping_limit_date - seller shipping date for handling the order over to the logistic partner. <br>
price - item price <br>
freight_value - item freight value item. If an order has more than one item (given the order_item_id) the freight value is splitted between items. Basically, this is all cost for shipping the product
as columns
  
2. olist_orders_dataset -> renamed as orders. Consists total of 8 columns <br> 
order_id - order unique identifier <br>
customer_id - key to the customer dataset. Each order has unique customer_id <br>
order_status - reference to the order statuses: delivered, shipped, other) <br>
order_purchase_timestamp - order purchase timestamp. <br>
order_approved_at - shows the payment approval timestamp <br>
order_delivered_carrier_date - order posting timestamp when it was handled to the logistic partner <br>
order_delivered_customer_date - shows the actual order delivery to the customer. <br>
order_estimated_delivery_date - shows the estimated delivery date that was informed to the customer at the purchase moment. <br>

3. olist_order_payments_dataset -> renamed as payment. Consists of 4 columns <br>
order_id - unique identifier of an order <br>
payment_sequential - customer may pay an order with more that one payment method. Ex: if the customer used credit card and voucher, payment_sequential will show 2. <br>
payment_installments - number of installments chosen by the customer. Ex: 1,2,..8 <br>
payment_value - transaction value <br>

4. olist_order_reviews_dataset -> renamed as order_reviews. Consists of 7 columns <br>
review_id - unique review identifier <br>
order_id - unique order identifier <br>
review_score - integers ranging from 1-5 <br>
review_comment_title - comment title from the review written by the customer in Portuguese <br>
review_comment_message - comment message from the review written by the customer in Portuguese <br>
review_creation_date - date in which survey was sent to the customer <br>
review_answer_timestamp - shows filled survey timestamp <br>

5. olist_products_dataset -> renamed as products. This dataset consists of 8 columns <br>
product_id - unique product identifier
product_category_name - root category of product in Portuguese <br>
product_name_lenght - number of characters extracted from the product name <br>
product_description_lengtht - number of characters extracted from the product description <br>
product_photos_qty - number of product published photos <br>
product_weight_g - product weight measured in grams <br>
product_length_cm - product length measured in centimeters <br>
product_width_cm - product width measured in centimeters <br>

6. olist_customers_dataset -> renamed as customers. Consists of 5 columns <br>
customer_id - each order has a unique customer_id <br>
customer_unique_id - unique identifier of a customer. It is not same id as customer_id <br>
customer_zip_code_prefix - first five digits of customer zip code. <br>
customer_city - customer city name <br>
customer_state - customer state <br>

7. olist_sellers_dataset -> renamed as sellers. Consists of 4 columns <br>
seller_id - seller unique identifier <br>
seller_zip_code_prefix - first 5 digits of seller zip code <br>
seller_city - seller city name <br>
seller_state - seller state <br>


8. olist_geolocation_dataset -> renamed as geolocation. Consists of 5 columns <br>
geolocation_zip_code_prefix - first 5 digits of zip code <br>
geolocation_lat - latitude <br>
geolocation_lng - longitude <br>
geolocation_city - city name <br>
geolocation_state - state <br>

9. olist_category_dataset -> renamed as category. Consists of 2 columns <br>
product_category_name - category name in Portuguese <br>
product_category_name_english - category name in English <br>


### 4. Relationships of datasets <br>
order_id is in 4 tables, product_id is in 2 tables. <br>

### 5. Questions for analysis (7 Questions) <br>

1. Customer Segmentation - RFM Analysis <br>
Question: Who are our most valuable customers using RFM (Recency, Frequency, Monetary) analysis, and how are customers distributed across different segments? <br>
Sub-questions:  <br>
- What are the RFM scores for each customer?  <br>
- How many customers fall into each segment (Champions, Loyal, At Risk, etc.)?  <br>
- What is the revenue contribution of each segment?  <br>


2. Cohort Retention Analysis  <br>
Question: What is the monthly cohort retention rate, and which customer cohorts have the best retention over time?  <br>
Sub-questions:  <br>
- What percentage of customers make a second purchase within 1, 3, 6 months?  <br>
- How does retention differ by cohort (customers grouped by first purchase month)?  <br>
- Which cohorts show the strongest loyalty?  <br>


3. Revenue & Product Performance by Region  <br>
Question: Which product categories drive the most revenue by state/region, and how has category performance changed over time?  <br>
Sub-questions:  <br>
What are the top 5 states by revenue?  <br>
- What are the most popular product categories in each region?  <br>
- Which categories show the fastest revenue growth month-over-month?  <br>
- What is the revenue concentration (% from top categories)?  <br>


4. Delivery Performance Impact on Customer Satisfaction  <br>
Question: How does delivery performance (on-time vs delayed) impact customer satisfaction scores and repeat purchase behavior?  <br>
Sub-questions:  <br>
- What percentage of orders are delivered on time vs delayed?  <br>
- How do review scores differ between on-time and delayed deliveries?  <br>
- Do customers with delayed deliveries have lower repeat purchase rates?  <br>
- Which product categories or sellers have the worst delivery performance?  <br>


5. Payment Method & Purchase Behavior Analysis  <br>
Question: What payment methods are preferred by different customer segments, and how do payment choices correlate with order value and product category?  <br>
Sub-questions:  <br>
- What are the most popular payment methods overall?  <br>
- Do high-value customers prefer different payment methods?  <br>
- Which categories have the highest use of installment payments?  <br>
- What is the average order value by payment type?  <br>


6. Seasonal Sales Patterns & Trends  
Question: What are the seasonal sales patterns, and which product categories show the strongest seasonality throughout the year?  <br>
Sub-questions:  
- How do sales trend month-over-month?  <br>
- Are there seasonal peaks (holidays, specific months)?  <br>
- Which product categories are most/least seasonal?  <br>
- What is the year-over-year growth rate? 

7. Product Basket Analysis 
Question: Which products are frequently bought together, and what are the cross-selling opportunities?  <br>
Sub-questions:  <br>
- What product category combinations appear most often in the same order?  <br>
- What is the average basket size (products per order)?  <br>
- Which categories have the highest cross-sell rates? 
