-- Mesclando as tabelas para obter o nome da categoria do produto]

SELECT
	products.product_id,
	products.product_name,
	categories.category_name
FROM products

left join categories on products.category_id = categories.category_id;