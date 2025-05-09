-- Alterando o tipo da coluna
alter table cars
alter column year type varchar(4);

-- Observação: Alguns tipos de dados não podem ser convertidos se a coluna tiver valor. Por exemplo, os números podem sempre ser convertidos em texto, mas o texto nem sempre pode ser convertida em números.
