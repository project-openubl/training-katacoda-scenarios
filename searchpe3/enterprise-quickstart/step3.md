## Descargar la configuración del Realm

Descarga un Realm pre configurado:

```
curl https://raw.githubusercontent.com/project-openubl/searchpe/master/src/main/resources/openubl-realm.json -o /tmp/openubl-realm.json
```{{execute T1}}

## Crea una instancia de Keycloak

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
-e PROXY_ADDRESS_FORWARDING=true \
-v /tmp/openubl-realm.json:/tmp/openubl-realm.json:z \
quay.io/keycloak/keycloak:15.0.2 -Djboss.bind.address.private=127.0.0.1 -Djboss.bind.address=0.0.0.0
```{{execute T1}}

> Keycloak está iniciado en el puerto 8080.

Espera a que Keycloak termine de crear el contenedor.

## Verifica Keycloak

Verifica los contenedores activos

```
docker ps
```{{execute T1}}

El resultado del comando anterior debe de contener Keycloak.

## Keycloak login

Ingresa a la consola de administración de Keycloak a travéz de:

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com