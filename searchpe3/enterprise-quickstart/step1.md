Usaremos Docker para crear una instancia de PostgreSQL y crear una base de datos.

```
docker run -d \
--name postgresql \
--network=host \
-p 5432:5432 \
-e POSTGRES_USER=db_username \
-e POSTGRES_PASSWORD=db_password \
-e POSTGRES_DB=searchpe_db \
postgres:13.1
```{{execute T1}}

> PostgreSQL está iniciado en el puerto 5432.

Espera a que Docker termine de crear el contenedor.

## Verifica PosgreSQL

Verifica los contenedores activos

```
docker ps
```{{execute T1}}

El resultado del comando anterior debe de contener a postgresql.
