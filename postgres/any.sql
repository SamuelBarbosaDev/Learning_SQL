SELECT
	product_name
FROM products

WHERE product_id = ANY(
	SELECT
		product_id
	FROM order_details
	WHERE quantity > 120
)

'
    O operador ANY no PostgreSQL permite comparar um valor com um conjunto de 
    valores dentro de um array ou o resultado de uma sub-consulta. Ele retorna 
    verdadeiro se o valor sendo comparado corresponder a qualquer elemento 
    dentro do conjunto especificado e falso caso contrário.
'
