-- Obtendo o nome da categoria
SELECT
    testproduct_id,
    product_name,
    category_name
FROM testproducts

INNER JOIN categories ON testproducts.category_id = categories.category_id;

'
O INNER JOIN é uma cláusula SQL que permite a junção entre duas ou mais tabelas, desde que haja um entrelaçamento entre todas.

    Funcionamento do INNER JOIN:
        O INNER JOIN compara cada linha da tabela A com as linhas da tabela B para encontrar todos os pares de linhas que satisfazem a condição de junção.
        Se a condição de junção for avaliada como TRUE, os valores das colunas das linhas correspondentes das tabelas A e B são combinados em uma nova linha e incluídos no conjunto de resultados1.
        Em outras palavras, o INNER JOIN retorna apenas os registros que têm valores correspondentes em um campo comum a ambas as tabelas.

'
