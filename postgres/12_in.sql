-- Filtrando por uma lista
SELECT
    *
FROM customers

where country in ('Germany', 'France', 'UK')

-- Filtrando pela lista de IDs dos clientes
SELECT
    *
FROM customers
WHERE customer_id in (SELECT customer_id FROM orders);
