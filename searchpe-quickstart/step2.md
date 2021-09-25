Searchpe utiliza Elasticsearch para realizar búsquedas avanzadas. Usaremos Docker para crear una instancia de Elasticsearch.

Has click en el siguiente comando para que sea ejecutado en el terminal.

```
docker run -d \
--name elasticsearch \
--network=host \
-p 9200:9200 \
-p 9300:9300 \
-e "discovery.type=single-node" \
docker.elastic.co/elasticsearch/elasticsearch:7.10.2
```{{execute T1}}

> Elasticsearch es iniciado en el puerto 9200.

## Verifica Elasticsearch (Opcional)

Ejecuta el siguiente comando:

```
docker logs elasticsearch
```{{execute T1}}

## Limpia el terminal

```
clear
```{{execute T1}}