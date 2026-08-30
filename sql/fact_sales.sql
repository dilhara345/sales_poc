CREATE OR REPLACE TABLE sales_poc.fact_sales AS 
SELECT r.order_id, 
c.customer_id, 
p.product_id, 
r.order_date, 
r.quantity, 
r.unit_price, 
ROUND(r.quantity * r.unit_price, 2) AS total_amount 
FROM sales_poc.dim_order r 
JOIN sales_poc.dim_customer c 
ON r.customer_name = c.customer_name --AND r.email = c.email 
JOIN sales_poc.dim_product p 
ON r.product = p.product --AND r.category = p.category;