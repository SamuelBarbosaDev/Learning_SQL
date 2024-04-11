-- Filtrando por uma lista
SELECT
    *
FROM customers

where country in ('Germany', 'France', 'UK')