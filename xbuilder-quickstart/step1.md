- Crea un proyecto Maven usando el comando:

`mvn archetype:generate -DgroupId=org.openubl.xbuilder -DartifactId=xbuilder-quickstart -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false`{{execute T1}}

- El comando anterior creó un proyecto maven en la carpeta `xbuilder-quickstart`. Revisa el contenido de la carpeta.
- Abre el archivo `xbuilder-quickstart/.pom.xml` y configura la versión de Java agregando las siguientes lineas debajo de `<url>http://maven.apache.org</url>`:

```xml
<properties>
  <maven.compiler.source>1.8</maven.compiler.source>
  <maven.compiler.target>1.8</maven.compiler.target>
</properties>
```{{copy}}
