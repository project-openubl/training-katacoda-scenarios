## Descargar la configuración del Realm

Descarga un Realm pre configurado:

```
curl https://raw.githubusercontent.com/project-openubl/searchpe/master/src/main/resources/openubl-realm.json -o /tmp/openubl-realm.json
```{{execute T1}}

## Crea uns instancia de Keycloak

Usaremos Docker para crear una instancia de Keycloak.

```
docker run -d \
--name keycloak \
--network=host \
-p 8080:8080 \
-e KEYCLOAK_USER=admin \
-e KEYCLOAK_PASSWORD=admin \
-e KEYCLOAK_IMPORT=/tmp/openubl-realm.json \
-e DB_VENDOR=h2 \
-v /tmp/openubl-realm.json:/tmp/openubl-realm.json:z \
quay.io/keycloak/keycloak:15.0.2 -Djboss.bind.address.private=127.0.0.1 -Djboss.bind.address=0.0.0.0
```{{execute T1}}

> Elasticsearch está iniciado en el puerto 9200.

Espera a que Elasticsearch termine de crear el contenedor.

## Verifica Elasticsearch

Verifica los contenedores activos

```
docker ps
```{{execute T1}}

El resultado del comando anterior debe de contener Keycloak.
