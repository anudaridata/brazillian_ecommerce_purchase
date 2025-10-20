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


### 4. Relationships of datasets
order_id is in 4 tables, product_id is in 2 tables. 

### 5. Questions for analysis
