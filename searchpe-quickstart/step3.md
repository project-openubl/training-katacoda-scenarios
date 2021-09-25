Searchpe

```
docker run -d \
--name searchpe \
--network=host \
-p 8180:8180 \
-e QUARKUS_HTTP_PORT=8180 \
-e QUARKUS_DATASOURCE_USERNAME=db_username \
-e QUARKUS_DATASOURCE_PASSWORD=db_password \
-e QUARKUS_DATASOURCE_JDBC_URL=jdbc:postgresql://localhost:5432/searchpe_db \
-e QUARKUS_HIBERNATE_SEARCH_ORM_ELASTICSEARCH_USERNAME=any \
-e QUARKUS_HIBERNATE_SEARCH_ORM_ELASTICSEARCH_PASSWORD=any \
-e QUARKUS_HIBERNATE_SEARCH_ORM_ELASTICSEARCH_HOSTS=localhost:9200 \
-e QUARKUS_HIBERNATE_SEARCH_ORM_ELASTICSEARCH_PROTOCOL=HTTP \
-e SEARCHPE_SUNAT_PADRONREDUCIDOURL=https://raw.githubusercontent.com/project-openubl/searchpe/master/padron_reducido_ruc.zip \
quay.io/projectopenubl/searchpe
```{execute}

# Verifica
docker logs searchpe