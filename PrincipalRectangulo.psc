// Módulo 1: Entrada
SubProceso LeerDimensiones(base Por Referencia, altura Por Referencia)
    Escribir "Ingresa la base del rectángulo:"
    Leer base
    Escribir "Ingresa la altura del rectángulo:"
    Leer altura
FinSubProceso

// Módulo 2: Proceso
SubProceso area <- CalcularArea(base, altura)
    Definir area Como Real
    area <- base * altura
FinSubProceso

// Módulo 3: Salida
SubProceso MostrarArea(area)
    Escribir "El área del rectángulo es: ", area
FinSubProceso

Algoritmo PrincipalRectangulo
    Definir b, h, areaRect Como Real
    LeerDimensiones(b, h)
    areaRect <- CalcularArea(b, h)
    MostrarArea(areaRect)
FinAlgoritmo

