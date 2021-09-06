- Abre el archivo `xbuilder-quickstart/pom.xml`
- Agrega la dependencia dentro del tag `<dependencies>`:

```xml
<dependency>
    <groupId>io.github.project-openubl</groupId>
    <artifactId>xbuilder</artifactId>
    <version>1.2.1.Final</version>
</dependency>
```{{copy}}

La versión final del archivo `xbuilder-quickstart/pom.xml` debe de ser:

```xml
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>org.openubl.xbuilder</groupId>
  <artifactId>xbuilder-quickstart</artifactId>
  <packaging>jar</packaging>
  <version>1.0-SNAPSHOT</version>
  <name>xbuilder-quickstart</name>
  <url>http://maven.apache.org</url>
  <properties>
    <maven.compiler.source>1.8</maven.compiler.source>
    <maven.compiler.target>1.8</maven.compiler.target>
  </properties>
  <dependencies>
    <dependency>
      <groupId>junit</groupId>
      <artifactId>junit</artifactId>
      <version>3.8.1</version>
      <scope>test</scope>
    </dependency>
    <dependency>
        <groupId>io.github.project-openubl</groupId>
        <artifactId>xbuilder</artifactId>
        <version>1.2.1.Final</version>
    </dependency>
  </dependencies>
</project>
```{{copy}}
