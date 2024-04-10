-- Soma do total de produtos

select
    sum(quantity) as total_products
from order_details;