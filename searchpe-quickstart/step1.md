Searchpe utiliza PostgreSQL para almacenar sus datos. Usaremos Docker para crear una instancia de PosgreSQL.

Has click en el siguiente comando para que sea ejecutado en el terminal.

`````
docker run -d \
--name postgresql \
--network=host \
-p 5432:5432 \
-e POSTGRES_USER=db_username \
-e POSTGRES_PASSWORD=db_password \
-e POSTGRES_DB=searchpe_db \
postgres:13.1
```{{execute T1}}

> PostgreSQL es iniciado en el puerto 5432.

## Verifica PosgreSQL(Opcional)

Ejecuta el siguiente comando:

```
docker logs postgresql
````{{execute T1}}
