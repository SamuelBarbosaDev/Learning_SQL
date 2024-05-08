SELECT
	product_name,
	CASE
		WHEN price < 10 THEN 'Low price product'
		WHEN price > 50 THEN 'High price product'
	ELSE
		'Normal Product'
	END AS "Price Category"
FROM products
'
    O operador CASE no PostgreSQL permite criar expressões condicionais 
    que produzem resultados diferentes com base em condições especificadas. 
    Ele é semelhante a uma instrução IF/ELSE em outras linguagens de programação 
    e pode ser usado em qualquer lugar onde você usaria uma expressão, 
    como nas cláusulas SELECT, WHERE, GROUP BY e HAVING.
'