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
