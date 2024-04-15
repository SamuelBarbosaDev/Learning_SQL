-- Filtrando entre um período
SELECT * FROM orders
WHERE order_date BETWEEN '2023-04-12' AND '2023-04-13';

-- Filtrando entre produtos (Observação, parece que o filtro é por ordem alfabética.)
SELECT * FROM products
WHERE product_name BETWEEN 'Pavlova' AND 'Tofu';