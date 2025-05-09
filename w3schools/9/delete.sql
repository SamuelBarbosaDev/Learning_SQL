-- O que é DELETA instrução é usada para excluir registros existentes em uma tabela.

delete from cars
where brand = 'Volvo';

-- Nota: Tenha cuidado ao excluir registros em uma tabela! Observe o WHERE em DELETEDeclaração. O que é WHEREA cláusula especifica quais os registos que devem ser suprimidos.

-- Se você omitir o WHERE,
-- Todos os registros na tabela serão excluídos!.
