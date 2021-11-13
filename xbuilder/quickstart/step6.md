Tenemos todo configurado y estamos listos para ver el XML generado por nuestro proyecto Java.

## Ejecuta el proyecto Maven

Ejecuta el proyecto usando el comando:

`mvn -f xbuilder-quickstart compile exec:java -Dexec.mainClass="org.openubl.xbuilder.Main"`{{execute T1}}

## Observa el contenido del XML

Una vez que el comando del paso anterior termine podrás ver un mensaje en el terminal:

```shell
Tu factura XML es:

<?xml version="1.0" encoding="ISO-8859-1"?> <Invoice xmlns="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:ccts="urn:un:unece:uncefact:documentation:2" xmlns:cec="urn:oasis:names:specification:ubl:schema:xsd:CommonExtensionComponents-2" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" xmlns:ext="urn:oasis:names:specification:ubl:schema:xsd:CommonExtensionComponents-2" xmlns:qdt="urn:oasis:names:specification:ubl:schema:xsd:QualifiedDatatypes-2" xmlns:sac="urn:sunat:names:specification:ubl:peru:schema:xsd:SunatAggregateComponents-1" xmlns:udt="urn:un:unece:uncefact:data:specification:UnqualifiedDataTypesSchemaModule:2" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">...</Invoice>
```

### Visualiza el XML con una herramienta

- Copia el XML resultado de ejecutar el comando del primer paso.
- Abre la página https://jsonformatter.org/xml-pretty-print y pega el XML.
