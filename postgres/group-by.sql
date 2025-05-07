SELECT
    COUNT(customer_id) AS num_clientes,
    country
FROM customers

GROUP BY country
ORDER BY num_clientes DESC

"
A cláusula GROUP BY no PostgreSQL é usada para agrupar linhas que têm os 
mesmos valores em colunas específicas em conjuntos de resumo. Ela é 
frequentemente usada em conjunto com funções agregadas, como COUNT(), 
SUM(), AVG(), MAX(), MIN(), entre outras.
"
