SELECT
    test_products.test_product_id,
    test_products.product_name,
    test_products.category_id,
    categories.category_name,
    categories.description
FROM test_products

FULL JOIN categories ON test_products.category_id = categories.category_id;

"
O FULL JOIN no PostgreSQL combina dados de duas tabelas e retorna todas as linhas de ambas, 
incluindo aquelas que têm correspondência e aquelas que não têm correspondência 
em ambos os lados. Em outras palavras, o FULL JOIN combina os resultados do 
LEFT JOIN e do RIGHT JOIN.
"
