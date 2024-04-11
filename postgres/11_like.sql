-- Em coustmer_name selecionamos por palavras que começam com B.
SELECT
    *
FROM CUSTOMERS

WHERE COUSTMER_NAME LIKE 'B%'

-- Em coustmer_name selecionamos por palavras com o final X.
SELECT
    *
FROM CUSTOMERS

WHERE COUSTMER_NAME ILIKE '%x'

-- Retorne todos os clientes de uma cidade que começa com 'L' seguida por um personagem curinga, depois 'nd' e depois dois personagens curingas.
SELECT 
    *
FROM customers
WHERE city LIKE 'L_nd__'; 