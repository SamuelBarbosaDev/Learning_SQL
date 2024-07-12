# Linux

## Instalando o Postgres

1. Instalando pacotes necessário
```shell
sudo apt install postgresql postgresql-client
```

2. Por favor note que as linguagens procedurais são instaladas separadamente (plpgsql vem por defeito). Procure nos pacotes Debian para encontrar a lista de possibilidades:
```shell
sudo apt search postgresql
```

3. Dando acesso de superusuário ao Postgres. (Observação, Tanto o usuário predefinido como a base de dados como a base de dados predefinida chamam-se postgres.)
```shell
su -c /usr/bin/psql postgres 
```

4. Se o seu sistema utiliza o sudo para obter direitos administrativos:
```shell
sudo -u postgres psql 
```

[Fonte](https://wiki.debian.org/PostgreSql)

## Comandos para linux

- Criando usuário
```shell
sudo -u postgres creatuser -D -A -P my_user_name
```

- Criando banco de dados
```shell
sudo -u postgres createdb -O my_user_name db_teste
```

## PGAdmin

### Como resolver 'FATAL: password authentication failed for user "postgres"' in PostgreSQL or pgAdmin4

- Inicie uma nova sessão com o usuário **postgres**:
```shell
sudo -i -u postgres
```

- Vá ao terminal do Postgres
```shell
psql
```

- Altera a senha do seu usuário **postgres**
```shell
\password postgres
```

[Fonte](https://www.youtube.com/watch?v=vFENJpe6eJU)

### Como resolver 'psql: error: connection to server on socket "/var/run/postgresql/.s.PGSQL.5432" failed: FATAL:  Peer authentication failed for user "afonso"'

Esse erro ocorre devido ao método de autenticação “Peer” que o PostgreSQL está usando. Para resolver isso, você pode criar um usuário e configurar a autenticação para “md5” ou “password”.

1. Crie um novo usuário no PostgreSQL:
```shell
CREATE USER afonso WITH PASSWORD 'sua_senha';
```

2. Edite o arquivo de configuração **pg_hba.conf**: Abra o arquivo **pg_hba.conf** que geralmente está localizado em **/etc/postgresql/[versão]/main/pg_hba.conf** (o caminho pode variar dependendo da sua instalação).
```shell
sudo nano /etc/postgresql/15/main/pg_hba.conf
```

3. Altere o método de autenticação: Encontre a linha que se refere ao método de autenticação para o seu usuário e banco de dados. Ela pode parecer algo assim:

```shell
# TYPE  DATABASE        USER            ADDRESS                 METHOD
local   all             afonso                                  peer
```

Altere “peer” para “md5” ou “password”:

```shell
# TYPE  DATABASE        USER            ADDRESS                 METHOD
local   all             afonso                                  md5
```

4. Edite o arquivo de configuração **pg_ident.conf**: Abra o arquivo **pg_ident.conf** que geralmente está localizado em **/etc/postgresql/[versão]/main/pg_ident.conf** (o caminho pode variar dependendo da sua instalação).
```shell
sudo nano /etc/postgresql/15/main/pg_ident.conf
```

5. Adicione o usuário:
```shell
# MAPNAME       SYSTEM-USERNAME         PG-USERNAME
user1           <computer-username>     afonso
```

6. Substitua o **<computer-username>** pelo System-Username, que pode ser encontrado usando o comando whoami. Digite no seu terminal:
```shell
whoami
```

[Fonte](https://stackoverflow.com/questions/69676009/psql-error-connection-to-server-on-socket-var-run-postgresql-s-pgsql-5432)