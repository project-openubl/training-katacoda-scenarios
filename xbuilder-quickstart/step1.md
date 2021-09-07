Usaremos el terminal de comandos para crear nuestro proyecto [Maven](https://maven.apache.org/). Haz click en el siguiente comando para ejecutarlo en el terminal.

`mvn archetype:generate -DgroupId=org.openubl.xbuilder -DartifactId=xbuilder-quickstart -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false`{{execute T1}}

> El comando anterior creó un proyecto Maven en la carpeta `xbuilder-quickstart`. Revisa el contenido de la carpeta para familiarizarte con la estructura de un proyecto Maven.

## Configura la versión de Java en tu proyecto Maven

- Abre el archivo `xbuilder-quickstart/pom.xml`{{open}}
- Agrega las las siguientes lineas:

```xml
<properties>
  <maven.compiler.source>1.8</maven.compiler.source>
  <maven.compiler.target>1.8</maven.compiler.target>
</properties>
```{{copy}}

> Los `<properties/>` deben de ser insertados debajo de `<url>http://maven.apache.org</url>`

### Versión final de pom.xml

<pre class="file" data-filename="xbuilder-quickstart/pom.xml" data-target="replace">
&lt;project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd"&gt;
  &lt;modelVersion&gt;4.0.0&lt;/modelVersion&gt;
  &lt;groupId&gt;org.openubl.xbuilder&lt;/groupId&gt;
  &lt;artifactId&gt;xbuilder-quickstart&lt;/artifactId&gt;
  &lt;packaging&gt;jar&lt;/packaging&gt;
  &lt;version&gt;1.0-SNAPSHOT&lt;/version&gt;
  &lt;name&gt;xbuilder-quickstart&lt;/name&gt;
  &lt;url&gt;http://maven.apache.org&lt;/url&gt;
  &lt;properties&gt;
    &lt;maven.compiler.source&gt;1.8&lt;/maven.compiler.source&gt;
    &lt;maven.compiler.target&gt;1.8&lt;/maven.compiler.target&gt;
  &lt;/properties&gt;
  &lt;dependencies&gt;
    &lt;dependency&gt;
      &lt;groupId&gt;junit&lt;/groupId&gt;
      &lt;artifactId&gt;junit&lt;/artifactId&gt;
      &lt;version&gt;3.8.1&lt;/version&gt;
      &lt;scope&gt;test&lt;/scope&gt;
    &lt;/dependency&gt;
  &lt;/dependencies&gt;
&lt;/project&gt;
</pre>
