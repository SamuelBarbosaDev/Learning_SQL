-- Filtrando por tudo o que NÃO está na lista
SELECT
    *
FROM CUSTOMERS

WHERE country NOT IN ('Germany', 'France', 'UK');
