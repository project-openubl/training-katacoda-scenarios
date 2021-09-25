La base de datos

```
docker run -d \
--name searchpe-ui \
--network=host \
-p 8080:8080 \
-e SEARCHPE_API_URL=http://localhost:8180 \
quay.io/projectopenubl/searchpe-ui
```{execute}

# Verifica
docker logs searchpe-ui