# PostgreSQL - Guia Completo

Este repositório contém um guia completo sobre o PostgreSQL, explicando desde conceitos básicos até funcionalidades avançadas. É um material de referência para o Samuel do futuro.

## Índice

- [PostgreSQL - Guia Completo](#postgresql---guia-completo)
  - [Índice](#índice)
  - [1. Introdução](#1-introdução)
  - [2. Instalação e Configuração](#2-instalação-e-configuração)
    - [2.1. Instalação em Linux (Debian/Ubuntu)](#21-instalação-em-linux-debianubuntu)
    - [2.2. Iniciando o Serviço](#22-iniciando-o-serviço)
    - [2.3. Acessando o psql](#23-acessando-o-psql)
  - [3. PL/pgSQL: A Linguagem Procedural do PostgreSQL](#3-plpgsql-a-linguagem-procedural-do-postgresql)
    - [3.1. Exemplo de Função Simples](#31-exemplo-de-função-simples)
  - [4. Tipos de Dados](#4-tipos-de-dados)
  - [5. Estrutura de Tabelas](#5-estrutura-de-tabelas)
    - [5.1. Criação da Database](#51-criação-da-database)
    - [5.2. Criação de Tabelas](#52-criação-de-tabelas)
    - [5.3. Alteração de Tabelas](#53-alteração-de-tabelas)
    - [5.4. Exclusão](#54-exclusão)
  - [6. Chaves Primárias e Estrangeiras](#6-chaves-primárias-e-estrangeiras)
    - [6.1. Chaves Primárias](#61-chaves-primárias)
    - [6.2. Chaves Estrangeiras](#62-chaves-estrangeiras)
  - [7. Constraints](#7-constraints)
  - [8. Sequences](#8-sequences)
    - [8.1. Criando e Utilizando uma Sequence](#81-criando-e-utilizando-uma-sequence)
  - [9. Operações CRUD (Create, Read, Update, Delete)](#9-operações-crud-create-read-update-delete)
    - [9.1. Create (Inserir)](#91-create-inserir)
    - [9.2. Read (Selecionar ou Consultar)](#92-read-selecionar-ou-consultar)
    - [9.3. Update (Atualizar)](#93-update-atualizar)
    - [9.4. Delete (Excluir)](#94-delete-excluir)
  - [10. Consultas (Queries)](#10-consultas-queries)
    - [Exemplos](#exemplos)
  - [11. Functions (Funções)](#11-functions-funções)
    - [11.1. Exemplo de Função que Retorna uma Tabela](#111-exemplo-de-função-que-retorna-uma-tabela)
  - [12. Operadores e Operações](#12-operadores-e-operações)
    - [Exemplo de concatenação](#exemplo-de-concatenação)
  - [13. Triggers](#13-triggers)
    - [13.1. Exemplo de Trigger](#131-exemplo-de-trigger)
  - [14. Views](#14-views)
    - [14.1. Criando uma View](#141-criando-uma-view)
  - [15. Administração do Banco de Dados](#15-administração-do-banco-de-dados)
    - [15.1. Gerenciamento de Usuários e Permissões](#151-gerenciamento-de-usuários-e-permissões)
    - [15.2. Monitoramento e Estatísticas](#152-monitoramento-e-estatísticas)
  - [16. Backups e Importação de Backups](#16-backups-e-importação-de-backups)
    - [16.1. Realizando Backups](#161-realizando-backups)
    - [16.2. Restaurando Backups](#162-restaurando-backups)
  - [17. JSON no PostgreSQL](#17-json-no-postgresql)
    - [17.1. Criando uma Tabela com JSONB](#171-criando-uma-tabela-com-jsonb)
    - [17.2. Inserindo Dados em JSON](#172-inserindo-dados-em-json)
    - [17.3. Consultando Dados em JSON](#173-consultando-dados-em-json)
  - [18. Comandos Úteis no Terminal (psql)](#18-comandos-úteis-no-terminal-psql)
  - [18.1. Criando um usuário](#181-criando-um-usuário)
    - [18.1.1 Criando um usuário via terminal do psql](#1811-criando-um-usuário-via-terminal-do-psql)
    - [18.1.2 Criando um usuário sem entrar no psql (linha de comando Linux)](#1812-criando-um-usuário-sem-entrar-no-psql-linha-de-comando-linux)
    - [18.2. Autenticação e Conexão](#182-autenticação-e-conexão)
    - [18.3. Navegação e Listagem de Objetos](#183-navegação-e-listagem-de-objetos)
    - [18.4. Outros Comandos Úteis](#184-outros-comandos-úteis)
  - [Conclusão](#conclusão)

---

## 1. Introdução

**PostgreSQL** é um Sistema de Gerenciamento de Banco de Dados Relacional (SGBDR) de código aberto, reconhecido por sua robustez, conformidade com os padrões SQL e extensibilidade. Ele é amplamente utilizado em ambientes corporativos e de produção por oferecer alta escalabilidade, desempenho e suporte a uma variedade de ferramentas e extensões.

---

## 2. Instalação e Configuração

### 2.1. Instalação em Linux (Debian/Ubuntu)

```bash
sudo apt update && sudo apt install postgresql postgresql-contrib
```

### 2.2. Iniciando o Serviço

```bash
sudo systemctl start postgresql
```

### 2.3. Acessando o psql

```bash
sudo -u postgres psql
```

---

## 3. PL/pgSQL: A Linguagem Procedural do PostgreSQL

O **PL/pgSQL** é a linguagem procedural nativa do PostgreSQL, permitindo escrever funções, procedures e triggers para encapsular lógica diretamente no banco de dados.

### 3.1. Exemplo de Função Simples

```sql
CREATE FUNCTION soma(a INT, b INT) RETURNS INT AS $$
BEGIN
    RETURN a + b;
END;
$$ LANGUAGE plpgsql;
```

*Uso:*

```sql
SELECT soma(3, 4); -- Retorna 7
```

---

## 4. Tipos de Dados

O PostgreSQL oferece uma ampla variedade de tipos de dados. Alguns exemplos:

- **Numéricos:** `INTEGER`, `BIGINT`, `DECIMAL`, `NUMERIC`, `FLOAT`.
- **Textuais:** `VARCHAR`, `TEXT`, `CHAR`.
- **Data e Hora:** `DATE`, `TIME`, `TIMESTAMP`, `INTERVAL`.
- **Booleanos:** `BOOLEAN`.
- **Complexos:** `UUID`, `ARRAY`, `JSON`, `JSONB`.

---

## 5. Estrutura de Tabelas

### 5.1. Criação da Database

**Cria base de dados:**

```sql
CREATE DATABASE <database-name>; 
```

**Cria base de dados especificando usuário:**

```sql
CREATE DATABASE <database-name> owner = <user-name>;
```

**Cria base de dados especificando usuário, ENCODING e TEMPLATE:**

```sql
CREATE DATABASE <database-name> owner = <user-name> ENCODING = 'UTF8' TEMPLATE template0; 
```

### 5.2. Criação de Tabelas

Exemplo de criação de uma tabela de produtos:

```sql
CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    produto_nome VARCHAR(100) NOT NULL,
    produto_codigo VARCHAR(50) UNIQUE,
    produto_valor NUMERIC(10,2),
    produto_situacao CHAR(1) DEFAULT 'A',
    data_criacao TIMESTAMP DEFAULT NOW(),
    data_atualizacao TIMESTAMP DEFAULT NOW()
);
```

### 5.3. Alteração de Tabelas

**Adicionar uma coluna:**

```sql
ALTER TABLE produtos ADD COLUMN descricao TEXT;
```

**Renomear uma coluna:**

```sql
ALTER TABLE produtos RENAME COLUMN produto_nome TO nome;
```

**Adicionando chave privada a uma tabela já criada:**

```sql
alter table <table-name> add constraint <table-name>_pkey primary key(<column-name>);
```

**Adicionando chave estrangeira a uma tabela já criada:**

```sql
alter table <table-name> add foreign key (<column-name>) references <foreign-table-name>(<private-key>);
```

**Adicionando chave estrangeira a uma tabela já criada, onde caso apagada deleta em cascata:**

```sql
alter table <table-name> add foreign key (<column-name>) references <foreign-table-name>(<private-key>) on delete cascade;
```

### 5.4. Exclusão 

**Exclui usuário:**

```sql
DROP USER <user-name>;
```

**Exclui tabela:**

```sql
DROP TABLE <table-name>;
```

---

## 6. Chaves Primárias e Estrangeiras

### 6.1. Chaves Primárias

A chave primária identifica de forma única cada linha de uma tabela. No exemplo acima, a coluna `id` é definida como `PRIMARY KEY`.

### 6.2. Chaves Estrangeiras

Elas estabelecem relacionamentos entre tabelas. Exemplo:

```sql
CREATE TABLE categorias (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id) ON DELETE CASCADE
);
```

*O parâmetro `ON DELETE CASCADE` garante que, se uma categoria for deletada, todos os registros relacionados na tabela `produtos` também serão removidos.*

---

## 7. Constraints

Constraints garantem a integridade dos dados. Entre as mais comuns temos:

- **PRIMARY KEY:** Garante unicidade.
- **FOREIGN KEY:** Mantém a integridade referencial entre tabelas.
- **UNIQUE:** Garante que os valores sejam exclusivos.
- **CHECK:** Impõe uma condição para os valores.
- **NOT NULL:** Impede que a coluna aceite valores nulos.

Exemplo:

```sql
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    email VARCHAR(100) UNIQUE NOT NULL,
    idade INT CHECK (idade >= 18)
);
```

---

## 8. Sequences

Uma **sequence** é um objeto que gera números sequenciais automaticamente. Geralmente, elas são usadas em conjunto com o tipo `SERIAL` para criar chaves primárias.

### 8.1. Criando e Utilizando uma Sequence

```sql
CREATE SEQUENCE minha_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
```

*Utilize a sequence em uma inserção:*

```sql
INSERT INTO usuarios (id, email, idade)
VALUES (nextval('minha_sequence'), 'exemplo@mail.com', 25);
```

---

## 9. Operações CRUD (Create, Read, Update, Delete)

### 9.1. Create (Inserir)

```sql
INSERT INTO produtos (produto_nome, produto_codigo, produto_valor)
VALUES ('Produto A', 'PA123', 99.99);
```

### 9.2. Read (Selecionar ou Consultar)

```sql
SELECT * FROM produtos;
```

### 9.3. Update (Atualizar)

```sql
UPDATE produtos
SET produto_valor = 89.99, data_atualizacao = NOW()
WHERE id = 1;
```

### 9.4. Delete (Excluir)

```sql
DELETE FROM produtos
WHERE id = 1;
```

---

## 10. Consultas (Queries)

Consultas são utilizadas para recuperar dados do banco.

### Exemplos

- **Seleção simples:**

  ```sql
  SELECT nome, produto_valor FROM produtos WHERE produto_situacao = 'A';
  ```

- **Join entre tabelas:**

  ```sql
  SELECT p.nome, c.nome AS categoria
  FROM produtos p
  JOIN categorias c ON p.categoria_id = c.id;
  ```

---

## 11. Functions (Funções)

Funções no PostgreSQL permitem encapsular lógica repetitiva em código reutilizável.

### 11.1. Exemplo de Função que Retorna uma Tabela

```sql
CREATE FUNCTION obter_produto_por_id(p_id INT) 
RETURNS TABLE(id INT, nome VARCHAR, valor NUMERIC) AS $$
BEGIN
    RETURN QUERY 
    SELECT id, produto_nome, produto_valor
    FROM produtos
    WHERE id = p_id;
END;
$$ LANGUAGE plpgsql;
```

*Chamada da função:*

```sql
SELECT * FROM obter_produto_por_id(1);
```

---

## 12. Operadores e Operações

PostgreSQL fornece diversos operadores para manipulação de dados:

- **Aritméticos:** `+`, `-`, `*`, `/`, `%`
- **Comparação:** `=`, `<`, `>`, `<=`, `>=`, `<>`
- **Lógicos:** `AND`, `OR`, `NOT`
- **Textuais:** `||` (concatenação), `LIKE`, `ILIKE`
- **JSON:** `->`, `->>`, `#>>`

### Exemplo de concatenação

```sql
SELECT 'Olá, ' || nome FROM usuarios;
```

---

## 13. Triggers

Triggers são funções que disparam (são executadas) automaticamente quando ocorrem certos eventos em uma tabela (como INSERT, UPDATE ou DELETE).

### 13.1. Exemplo de Trigger

Primeiro, crie uma função para a trigger:

```sql
CREATE OR REPLACE FUNCTION log_update_produto() 
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO logs_produtos (
        alteracao, data_alteracao, 
        id_old, produto_nome_old, 
        id_new, produto_nome_new
    ) VALUES (
        TG_OP, NOW(),
        OLD.id, OLD.produto_nome,
        NEW.id, NEW.produto_nome
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;
```

Depois, crie a trigger:

```sql
CREATE TRIGGER trigger_atualizacao_produto
AFTER UPDATE ON produtos
FOR EACH ROW
EXECUTE FUNCTION log_update_produto();
```

---

## 14. Views

Uma **view** é uma tabela virtual baseada em uma consulta SQL. Ela pode simplificar consultas complexas e melhorar a segurança, limitando o acesso direto às tabelas.

### 14.1. Criando uma View

```sql
CREATE VIEW produtos_ativos AS
SELECT id, produto_nome, produto_valor
FROM produtos
WHERE produto_situacao = 'A';
```

*Para consultar a view:*

```sql
SELECT * FROM produtos_ativos;
```

---

## 15. Administração do Banco de Dados

### 15.1. Gerenciamento de Usuários e Permissões

**Criar um novo usuário:**

```sql
CREATE USER novo_usuario WITH PASSWORD 'senha_segura';
```

**Atribuir privilégios a um usuário:**

```sql
GRANT ALL PRIVILEGES ON DATABASE nome_do_banco TO novo_usuario;
```

### 15.2. Monitoramento e Estatísticas

Você pode utilizar views de estatísticas para monitorar atividades:

```sql
SELECT * FROM pg_stat_activity;
```

E também usar o comando `EXPLAIN ANALYZE` para verificar o desempenho das consultas.

---

## 16. Backups e Importação de Backups

### 16.1. Realizando Backups

Utilize a ferramenta **pg_dump** para criar backups.

- **Backup em formato tar:**

  ```bash
  pg_dump -U usuario -d nome_do_banco -F t -f backup.tar
  ```

- **Backup em formato SQL:**

  ```bash
  pg_dump -U usuario -d nome_do_banco -F p -f backup.sql
  ```

### 16.2. Restaurando Backups

- **Restaurando um backup tar:**

  ```bash
  pg_restore -U usuario -d nome_do_banco -F t backup.tar
  ```

- **Restaurando um backup SQL:**

  ```bash
  psql -U usuario -d nome_do_banco -f backup.sql
  ```

---

## 17. JSON no PostgreSQL

O PostgreSQL suporta os tipos **JSON** e **JSONB** (uma versão binária otimizada) para armazenar e consultar dados em formato JSON.

### 17.1. Criando uma Tabela com JSONB

```sql
CREATE TABLE configuracoes (
    id SERIAL PRIMARY KEY,
    dados JSONB
);
```

### 17.2. Inserindo Dados em JSON

```sql
INSERT INTO configuracoes (dados)
VALUES ('{"tema": "escuro", "layout": "moderno"}');
```

### 17.3. Consultando Dados em JSON

Acesse dados JSON usando os operadores `->` e `->>`:

```sql
SELECT dados->>'tema' AS tema
FROM configuracoes;
```

---

## 18. Comandos Úteis no Terminal (psql)

O *psql* é o cliente interativo do PostgreSQL e oferece uma série de comandos úteis para navegar e administrar o banco de dados. Confira alguns dos principais:

## 18.1. Criando um usuário

**Criando um usuário com senha:**

```sql
CREATE USER novo_usuario WITH PASSWORD 'senha_segura';
```

**Concedendo privilégios de administrador (`SUPERUSER`):**

```sql
CREATE USER admin_usuario WITH PASSWORD 'senha_admin' SUPERUSER;
```

**Concedendo privilégios de conexão a um banco específico:**

```sql
GRANT CONNECT ON DATABASE nome_do_banco TO novo_usuario;
```

**Concedendo permissões de leitura e escrita:**

```sql
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO novo_usuario;
```

### 18.1.1 Criando um usuário via terminal do psql

**Acesse o PostgreSQL:**

```bash
sudo -u postgres psql
```

**Crie um usuário dentro do shell do PostgreSQL:**

```sql
CREATE USER meu_usuario WITH PASSWORD 'minha_senha';
```

**Conceda permissões administrativas (opcional):**

```sql
ALTER USER meu_usuario WITH SUPERUSER;
```

**Conceda acesso ao banco de dados:**

```sql
GRANT ALL PRIVILEGES ON DATABASE nome_do_banco TO meu_usuario;
```

### 18.1.2 Criando um usuário sem entrar no psql (linha de comando Linux)

**Criando um usuário:**

```bash
sudo -u postgres createuser --interactive
```

**Criando usuário diretamente:**

```bash
sudo -u postgres createuser -P meu_usuario
```

### 18.2. Autenticação e Conexão

- **Conectar com um usuário e selecionar um banco:**

```bash
psql -U <user-name> <db-name>
```

- **Criando um Banco de Dados pelo Terminal:**

```bash
createdb -U <usuario> nome_do_banco
```

Ou, alternativamente, utilizando o `psql`:

```bash
psql -U <usuario> -c "CREATE DATABASE nome_do_banco;"
```

- **Sair do console do psql:**

  ```bash
  \q
  ```

- **Alterar a conexão para outro banco de dados e/ou usuário:**

  ```sql
  \c nomebanco nomeuser
  ```

### 18.3. Navegação e Listagem de Objetos

- **Listar tabelas de forma detalhada:**

  ```sql
  \dt+
  nometabela   -- Opcional: Para detalhar uma tabela específica
  ```

- **Mudar o diretório no terminal (não é específico do psql):**

  ```bash
  \cd
  ```

- **Listar tabelas, índices, sequências ou views (de forma geral):**

  ```sql
  \d
  ```

- **Exibir a estrutura de uma tabela específica:**

  ```sql
  \d nometabela
  ```

- **Listar apenas tabelas:**

  ```sql
  \dt
  ```

- **Listar índices:**

  ```sql
  \di
  ```

- **Listar sequências:**

  ```sql
  \ds
  ```

- **Listar views:**

  ```sql
  \dv
  ```

- **Listar tabelas do sistema:**

  ```sql
  \dS
  ```

### 18.4. Outros Comandos Úteis

- **Listar esquemas:**

  ```sql
  \dn
  ```

- **Listar privilégios:**

  ```sql
  \dp
  ```

- **Listar usuários:**

  ```sql
  \du
  ```

- **Listar grupos:**

  ```sql
  \dg
  ```

- **Listar todos os bancos do servidor, com donos e codificações:**

  ```sql
  \l
  ```

- **Abrir o editor com a última consulta:**

  ```sql
  \e
  ```

- **Exibir ajuda dos comandos psql:**

  ```sql
  \?
  ```

- **Exibir ajuda de todos os comandos SQL:**

  ```sql
  \h *
  ```

- **Exibir ajuda específica para um comando SQL (por exemplo, ALTER TABLE):**

  ```sql
  \h alter table
  ```

- **Ativar/desativar saída em HTML:**

  ```sql
  \H
  ```

- **Verificar a codificação atual:**

  ```sql
  \encoding
  ```

- **Alterar a senha do usuário conectado:**

  ```sql
  \password
  ```

- **Obter informações sobre a conexão atual:**

  ```sql
  \conninfo
  ```

---

## Conclusão

Este guia foi elaborado para oferecer uma visão abrangente sobre o uso do PostgreSQL, cobrindo desde instalações e configurações básicas até técnicas avançadas como funções, triggers, views, administração, backup e manipulação de JSON. Espera-se que este material sirva como referência para o Samuel do futuro.

[Documentação oficial do PostgreSQL](https://www.postgresql.org/docs/)
