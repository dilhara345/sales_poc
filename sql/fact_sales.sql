CREATE OR REPLACE TABLE sales_poc.fact_sales AS 
SELECT o.order_id, 
c.customer_id, 
p.product_id, 
o.order_date, 
o.quantity, 
o.unit_price, 
ROUND(o.quantity * o.unit_price, 2) AS total_amount 
FROM sales_poc.dim_order o 
JOIN sales_poc.dim_customer c 
ON o.customer_name = c.customer_name --AND o.email = c.email 
JOIN sales_poc.dim_product p 
ON o.product = p.product --AND o.category = p.category;