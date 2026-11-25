// Módulo 1: Entrada
SubProceso LeerPrecio(precio Por Referencia)
    Escribir "Ingresa el precio del artículo:"
    Leer precio
FinSubProceso

// Módulo 2: Proceso
SubProceso precioFinal <- ProcesarPrecio(precio)
    Definir precioFinal Como Real
    precioFinal <- precio
FinSubProceso

// Módulo 3: Salida
SubProceso MostrarPrecio(precio)
    Escribir "El precio del artículo es $", precio
FinSubProceso

Algoritmo PrincipalPrecio
    Definir precio, resultado Como Real
    LeerPrecio(precio)
    resultado <- ProcesarPrecio(precio)
    MostrarPrecio(resultado)
FinAlgoritmo

