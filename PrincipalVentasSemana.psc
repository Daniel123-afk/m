// Módulo 1: Entrada
SubProceso LeerVentas(d1 Por Referencia, d2 Por Referencia, d3 Por Referencia, d4 Por Referencia, d5 Por Referencia, d6 Por Referencia, d7 Por Referencia)
    Escribir "Ingresa las ventas del Lunes:"
    Leer d1
    Escribir "Ingresa las ventas del Martes:"
    Leer d2
    Escribir "Ingresa las ventas del Miércoles:"
    Leer d3
    Escribir "Ingresa las ventas del Jueves:"
    Leer d4
    Escribir "Ingresa las ventas del Viernes:"
    Leer d5
    Escribir "Ingresa las ventas del Sábado:"
    Leer d6
    Escribir "Ingresa las ventas del Domingo:"
    Leer d7
FinSubProceso

// Módulo 2: Proceso
SubProceso total <- SumarVentas(d1, d2, d3, d4, d5, d6, d7)
    Definir total Como Real
    total <- d1 + d2 + d3 + d4 + d5 + d6 + d7
FinSubProceso

// Módulo 3: Salida
SubProceso MostrarVentas(total)
    Escribir "El total de ventas de la semana es: $", total
FinSubProceso

Algoritmo PrincipalVentasSemana
    Definir l, m, x, j, v, s, d, totalSemana Como Real
    LeerVentas(l, m, x, j, v, s, d)
    totalSemana <- SumarVentas(l, m, x, j, v, s, d)
    MostrarVentas(totalSemana)
FinAlgoritmo

