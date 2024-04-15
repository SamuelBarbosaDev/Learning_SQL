-- Renomeando a coluna customer_id para id
SELECT
    customer_id AS ID
FROM customers;

-- Concatenando duas colunas
SELECT
    product_name || unit AS product
FROM products;