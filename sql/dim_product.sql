CREATE OR REPLACE TABLE sales_poc.dim_product AS 
SELECT ROW_NUMBER() OVER (ORDER BY product) AS product_id, 
product, 
category, 
unit_price FROM ( SELECT DISTINCT product, category, unit_price FROM sales_poc.rawdata );