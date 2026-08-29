CREATE OR REPLACE TABLE sales_poc.dim_customer AS 
SELECT ROW_NUMBER() OVER (ORDER BY customer_name) AS customer_id, 
customer_name, 
email, 
country 
FROM ( SELECT DISTINCT customer_name, email, country FROM sales_poc.rawdata );