XBuilder requiere que configures una forma de determinar la hora del sistema. Para mayor información lee la documentación oficial [crea-un-systemclock](https://project-openubl.github.io/docs/xbuilder/create-xml#crea-un-systemclock)


## Crea `DefaultSystemClock.java`

Aquí tienes una clase Java llamada `DefaultSystemClock.java` que contiene todo lo requerido por XBuilder.

Has click en el siguiente comando para que pueda ser ejecutado:

```shell
cat << EOF > xbuilder-quickstart/src/main/java/org/openubl/xbuilder/DefaultSystemClock.java
package org.openubl.xbuilder;

import io.github.project.openubl.xmlbuilderlib.clock.SystemClock;

import java.util.Calendar;
import java.util.TimeZone;

public class DefaultSystemClock implements SystemClock {

    @Override
    public TimeZone getTimeZone() {
        return TimeZone.getTimeZone("America/Lima");
    }

    @Override
    public Calendar getCalendarInstance() {
        return Calendar.getInstance();
    }

}
EOF
```{{execute}}

## Observa el contenido de `DefaultSystemClock.java`

Abre el archivo `xbuilder-quickstart/src/main/java/org/openubl/xbuilder/DefaultSystemClock.java`{{open}} y analiza el contenido.
