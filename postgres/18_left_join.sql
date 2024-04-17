-- Obtendo o nome da categorias
SELECT
    testproduct_id,
    product_name,
    category_name
FROM testproducts

LEFT JOIN categories ON testproducts.category_id = categories.category_id;