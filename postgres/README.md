# Postgres

## Comandos

- Autenticando com usuário, e, selecionando banco de dados.

```bash
psql -U <user-name> <db-name>
```

- Saindo do shell do postgres.

```sql
\q
```

- Lista todas as tabelas.

```sql
\dt
```

ou

```sql
\d
```

- Lista todas as bases de dados.

```sql
\l
```

- Exclui usuário.

```sql
DROP USER <user-name>;
```

- Cria base de dados:

```sql
CREATE DATABASE <database-name>; 
```

- Cria base de dados especificando usuário:

```sql
CREATE DATABASE <database-name> owner = <user-name>;
```

- Cria base de dados especificando usuário, ENCODING e TEMPLATE:

```sql
CREATE DATABASE <database-name> owner = <user-name> ENCODING = 'UTF8' TEMPLATE template0; 
```
