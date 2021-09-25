La base de datos

```
docker run -d \
--name postgresql \
--network=host \
-p 5432:5432 \
-e POSTGRES_USER=db_username \
-e POSTGRES_PASSWORD=db_password \
-e POSTGRES_DB=searchpe_db \
postgres:13.1
```{execute}

# Verifica
docker logs postgresql