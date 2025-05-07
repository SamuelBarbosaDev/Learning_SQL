SELECT
    customers.customer_name
FROM customers

WHERE EXISTS (
	SELECT
		order_id
	FROM orders
	WHERE customer_id = customers.customer_id
)

"
O operador EXISTS no PostgreSQL é usado para verificar a existência de 
registros em uma sub-consulta. Ele retorna verdadeiro se a sub-consulta 
retornar pelo menos um registro, e falso se a sub-consulta não retornar 
nenhum resultado.
"
