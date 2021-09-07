Ya tenemos `ConfigDefaults.java` y `DefaultSystemClock.java` configurados correctamente. Ahora es momento de crear una factura electrónica.

La creación de una factura es explicada en la documentación oficial [crea-el-xm](https://project-openubl.github.io/docs/xbuilder/create-xml#crea-el-xml).

## Crea `Main.java`

Aquí tienes una clase llamada `Main.java` con en contenido requerido para crear una factura electrónica.

Has click en el siguiente comando para que pueda ser ejecutado:

````shell
cat << EOF > xbuilder-quickstart/src/main/java/org/openubl/xbuilder/Main.java
package org.openubl.xbuilder;

import io.github.project.openubl.xmlbuilderlib.clock.SystemClock;
import io.github.project.openubl.xmlbuilderlib.config.Config;
import io.github.project.openubl.xmlbuilderlib.facade.DocumentManager;
import io.github.project.openubl.xmlbuilderlib.facade.DocumentWrapper;
import io.github.project.openubl.xmlbuilderlib.models.catalogs.Catalog6;
import io.github.project.openubl.xmlbuilderlib.models.input.common.ClienteInputModel;
import io.github.project.openubl.xmlbuilderlib.models.input.common.ProveedorInputModel;
import io.github.project.openubl.xmlbuilderlib.models.input.standard.DocumentLineInputModel;
import io.github.project.openubl.xmlbuilderlib.models.input.standard.invoice.InvoiceInputModel;
import io.github.project.openubl.xmlbuilderlib.models.output.standard.invoice.InvoiceOutputModel;

import java.math.BigDecimal;
import java.util.Arrays;

public class Main {

    public static void main(String[] args) throws Exception {
        // General config
        Config config = new ConfigDefaults();
        SystemClock clock = new DefaultSystemClock();

        // Invoice generation
        InvoiceInputModel input = invoiceFactory();
        DocumentWrapper<InvoiceOutputModel> result = DocumentManager.createXML(input, config, clock);
        String xml = result.getXml();

        System.out.println("\n Tu factura XML es: \n" + xml);
    }

    public static InvoiceInputModel invoiceFactory() {
        return InvoiceInputModel.Builder.anInvoiceInputModel()
                .withSerie("F001")
                .withNumero(1)
                .withProveedor(ProveedorInputModel.Builder.aProveedorInputModel()
                        .withRuc("12345678912")
                        .withRazonSocial("Los grandes S.A.C.")
                        .build()
                )
                .withCliente(ClienteInputModel.Builder.aClienteInputModel()
                        .withNombre("Pepito Suarez")
                        .withNumeroDocumentoIdentidad("12121212121")
                        .withTipoDocumentoIdentidad(Catalog6.RUC.toString())
                        .build()
                )
                .withDetalle(Arrays.asList(
                        DocumentLineInputModel.Builder.aDocumentLineInputModel()
                                .withDescripcion("Item1")
                                .withCantidad(new BigDecimal(10))
                                .withPrecioUnitario(new BigDecimal(100))
                                .build(),
                        DocumentLineInputModel.Builder.aDocumentLineInputModel()
                                .withDescripcion("Item2")
                                .withCantidad(new BigDecimal(10))
                                .withPrecioUnitario(new BigDecimal(100))
                                .build())
                )
                .build();
    }

}
EOF
```{{execute}}

## Observa el contenido de `Main.java`

Abre el archivo `xbuilder-quickstart/src/main/java/org/openubl/xbuilder/Main.java`{{open}} y analiza el contenido.
