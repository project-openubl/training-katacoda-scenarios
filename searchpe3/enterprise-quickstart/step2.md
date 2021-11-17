Usaremos Docker para crear una instancia de Elasticsearch.

```
docker run -d \
--name elasticsearch \
--network=host \
-p 9200:9200 \
-p 9300:9300 \
-e "discovery.type=single-node" \
docker.elastic.co/elasticsearch/elasticsearch:7.10.2
```{{execute T1}}

> Elasticsearch está iniciado en el puerto 9200.

Espera a que Elasticsearch termine de crear el contenedor.

## Verifica Elasticsearch

Verifica los contenedores activos

```
docker ps
```{{execute T1}}

El resultado del comando anterior debe de contener Elasticsearch.
