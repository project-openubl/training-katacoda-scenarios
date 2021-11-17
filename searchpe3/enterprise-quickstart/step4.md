Ahora, es el momento de instalar **Searchpe enterprise**. Usaremos Docker para crear una instancia.

```
docker run -d \
--name searchpe \
--network=host \
-p 8180:8180 \
-e QUARKUS_HTTP_PORT=8180 \
-e QUARKUS_DATASOURCE_USERNAME=db_username \
-e QUARKUS_DATASOURCE_PASSWORD=db_password \
-e QUARKUS_DATASOURCE_JDBC_URL=jdbc:postgresql://localhost:5432/searchpe_db \
-e SEARCHPE_SUNAT_PADRONREDUCIDOURL=https://raw.githubusercontent.com/project-openubl/searchpe/master/src/test/resources/padron_reducido_ruc.zip \
-e QUARKUS_OIDC_ENABLED=true \
-e QUARKUS_OIDC_CLIENT_ID=searchpe \
-e QUARKUS_OIDC_CREDENTIALS_SECRET=secret \
-e QUARKUS_OIDC_AUTH_SERVER_URL=http://localhost:8080/auth/realms/openubl \
-e QUARKUS_HIBERNATE_SEARCH_ORM_ELASTICSEARCH_USERNAME=es_username \
-e QUARKUS_HIBERNATE_SEARCH_ORM_ELASTICSEARCH_PASSWORD=es_password \
-e QUARKUS_HIBERNATE_SEARCH_ORM_ELASTICSEARCH_HOSTS=localhost:9200 \
-e QUARKUS_HIBERNATE_SEARCH_ORM_ELASTICSEARCH_PROTOCOL=HTTP \
quay.io/projectopenubl/searchpe-enterprise:3.0.0.Final
```{{execute T1}}

> - Note que se está pasando una variable de entorno **SEARCHPE_SUNAT_PADRONREDUCIDOURL** con la URl de un padrón reducido de prueba. En escenarios reales deberás de usar `SEARCHPE_SUNAT_PADRONREDUCIDOURL=http://www2.sunat.gob.pe/padron_reducido_ruc.zip` para usar el padrón reducido de la SUNAT.
> - Searchpe está iniciado en el puerto 8180.

Espera a que Docker termine de crear el contenedor.

## Verifica Searchpe

Verifica los contenedores activos

```
docker ps
```{{execute T1}}

El resultado del comando anterior debe de contener Searchpe:

## Verifica el estado de Searchpe

Puedes ver el estado `Health status` de Searchpe usando:

```
curl http://localhost:8180/q/health
```{{execute T1}}

el resultado del comando anterior debe de parecerse a:

```
{
    "status": "UP",
    "checks": [
        {
            "name": "Database connections health check",
            "status": "UP"
        }
    ]
}
```