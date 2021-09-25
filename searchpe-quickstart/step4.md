Searchpe puede ser consumido enteramente por sus REST endpoints; pero para efectos de este tutorial utilizaremos la UI para utilizar Searchpe. Para instalar la UI utilizaremos Docker.

Has click en el siguiente comando para que sea ejecutado en el terminal.

```
docker run -d \
--name searchpe-ui \
--network=host \
-p 8080:8080 \
-e SEARCHPE_API_URL=http://localhost:8180 \
quay.io/projectopenubl/searchpe-ui
```{{execute T1}}

> Searchpe UI es iniciado en el puerto 8080.

# Verifica la UI (Opcional)

Ejecuta el siguiente comando:

```
docker logs searchpe-ui
```{{execute T1}}