// Módulo 1: Entrada
SubProceso LeerFinanzas(ingresos Por Referencia, gastos Por Referencia)
    Escribir "Ingresa el total de ingresos:"
    Leer ingresos
    Escribir "Ingresa el total de gastos:"
    Leer gastos
FinSubProceso

// Módulo 2: Proceso
SubProceso ganancia <- CalcularGanancia(ingresos, gastos)
    Definir ganancia Como Real
    ganancia <- ingresos - gastos
FinSubProceso

// Módulo 3: Salida
SubProceso MostrarGanancia(ganancia)
    Escribir "La ganancia neta es: $", ganancia
FinSubProceso

Algoritmo PrincipalGanancia
    Definir ing, gas, neta Como Real
    LeerFinanzas(ing, gas)
    neta <- CalcularGanancia(ing, gas)
    MostrarGanancia(neta)
FinAlgoritmo

