-- Obtendo o nome da categoria
SELECT
	test_product_id,
	product_name,
	category_name
FROM test_products

RIGHT JOIN categories ON test_products.category_id = categories.category_id;

'
O RIGHT JOIN é uma operação de junção usada em SQL para combinar 
dados de duas tabelas com base em uma coluna comum. No entanto, 
ele retorna todas as linhas da tabela da direita e as linhas 
correspondentes da tabela da esquerda. Isso significa que, 
mesmo se não houver linhas correspondentes na tabela da esquerda, 
as linhas da tabela da direita ainda serão retornadas
'
