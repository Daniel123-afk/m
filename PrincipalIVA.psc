// Módulo 1: Entrada
SubProceso LeerCompra(precio Por Referencia, cantidad Por Referencia)
    Escribir "Ingresa el precio unitario:"
    Leer precio
    Escribir "Ingresa la cantidad:"
    Leer cantidad
FinSubProceso

// Módulo 2: Proceso
SubProceso CalcularTotalIVA(precio, cantidad, subtotal Por Referencia, iva Por Referencia, total Por Referencia)
    subtotal <- precio * cantidad
    iva <- subtotal * 0.19
    total <- subtotal + iva
FinSubProceso

// Módulo 3: Salida
SubProceso MostrarFactura(subtotal, iva, total)
    Escribir "Subtotal: $", subtotal
    Escribir "IVA (19%): $", iva
    Escribir "Total a pagar: $", total
FinSubProceso

Algoritmo PrincipalIVA
    Definir precio, subtotal, iva, total Como Real
    Definir cantidad Como Entero
    LeerCompra(precio, cantidad)
    CalcularTotalIVA(precio, cantidad, subtotal, iva, total)
    MostrarFactura(subtotal, iva, total)
FinAlgoritmo

