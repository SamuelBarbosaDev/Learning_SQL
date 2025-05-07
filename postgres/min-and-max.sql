-- Selecionando o maior e o menor valor
SELECT
    max(price) AS MAX_PRICE,
    min(price) AS MIN_PRICE
FROM products;
