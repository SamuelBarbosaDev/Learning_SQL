SELECT
	product_name
FROM products

WHERE product_id = ALL(
	SELECT
		product_id
	FROM order_details
	WHERE quantity > 10
)

'
    O operador ALL no PostgreSQL permite comparar um valor com uma 
    lista de valores retornados por uma subconsulta. Ele é usado 
    para verificar se um valor atende a uma condição para todos os 
    valores na lista.
'