CREATE OR REPLACE TABLE sales_poc.dim_order AS 
SELECT order_id, 
customer_name,
product, 
quantity,
order_date,
FROM ( SELECT DISTINCT order_id, customer_name, product, quantity, order_date FROM sales_poc.rawdata );