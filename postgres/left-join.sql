-- Obtendo o nome da categorias
SELECT
    test_product_id,
    product_name,
    category_name
FROM test_products

LEFT JOIN categories ON test_products.category_id = categories.category_id;
