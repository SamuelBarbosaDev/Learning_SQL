-- O que é DELETEA instrução é usada para excluir registros existentes em uma tabela.

delete from cars
where brand = 'Volvo';

-- Nota: Tenha cuidado ao excluir registros em uma tabela! Observe o WHERECláutra em DELETEDeclaração. O que é WHEREA cláusula especifica quais os registos que devem ser suprimidos.

-- Se você omitir o WHERECláutra,
-- Todos os registros na tabela serão excluídos!.
