SELECT
    test_product_id,
    product_name,
    category_id,
FROM test_product_id

CROSS JOIN categories

"
O CROSS JOIN no PostgreSQL combina cada linha de uma tabela com 
todas as linhas de outra tabela, resultando em uma combinação 
completa de todas as linhas. Em outras palavras, o CROSS JOIN 
produz o produto cartesiano das linhas em duas tabelas1234. 
Diferentemente de outras cláusulas de junção, como LEFT JOIN ou INNER JOIN, 
a cláusula CROSS JOIN não possui um predicado de junção.
"
