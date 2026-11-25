// Módulo 1: Entrada
SubProceso LeerDatosCompra(valorCompra Por Referencia, porcentajeDesc Por Referencia)
    Escribir "Ingresa el valor de la compra:"
    Leer valorCompra
    Escribir "Ingresa el porcentaje de descuento (ej. 15 para 15%):"
    Leer porcentajeDesc
FinSubProceso

// Módulo 2: Proceso
SubProceso CalcularDescuento(valorCompra, porcentajeDesc, descuento Por Referencia, precioFinal Por Referencia)
    descuento <- valorCompra * (porcentajeDesc / 100)
    precioFinal <- valorCompra - descuento
FinSubProceso

// Módulo 3: Salida
SubProceso MostrarDescuento(descuento, precioFinal)
    Escribir "Descuento aplicado: $", descuento
    Escribir "Precio final a pagar: $", precioFinal
FinSubProceso

Algoritmo PrincipalDescuento
    Definir compra, porcentaje, desc, final Como Real
    LeerDatosCompra(compra, porcentaje)
    CalcularDescuento(compra, porcentaje, desc, final)
    MostrarDescuento(desc, final)
FinAlgoritmo

