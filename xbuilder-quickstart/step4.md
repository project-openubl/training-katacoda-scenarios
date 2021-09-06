Crea `DefaultSystemClock.java` para configurar el reloj de XBuilder. Puedes leer la documentación https://project-openubl.github.io/docs/xbuilder/create-xml#crea-un-systemclock

Ejecuta el comando:

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
