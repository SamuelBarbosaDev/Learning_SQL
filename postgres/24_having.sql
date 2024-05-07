SELECT
	COUNT(customer_id) AS num_clientes,
	country
FROM customers

GROUP BY country
HAVING COUNT(customer_id) > 2
ORDER BY num_clientes

"
    O HAVING no PostgreSQL é usado para filtrar grupos de 
    linhas resultantes de uma cláusula GROUP BY, de forma 
    semelhante à maneira como a cláusula WHERE filtra as 
    linhas antes do agrupamento.
"

"
Diferença entre WHERE e HAVING:

    - A cláusula WHERE filtra as linhas com base em uma 
        condição especificada, enquanto o HAVING filtra grupos de 
        linhas de acordo com uma condição especificada.
    - Em outras palavras, a condição na cláusula WHERE é 
        aplicada às linhas individuais, enquanto a condição 
        na cláusula HAVING é aplicada aos grupos de linhas.
"