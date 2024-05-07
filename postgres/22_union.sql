SELECT
    testproduct_id
FROM testproducts

UNION ALL

SELECT
    product_id
FROM products

"
    O UNION no PostgreSQL é usado para combinar os resultados de duas ou 
    mais consultas em um único conjunto de resultados.
"