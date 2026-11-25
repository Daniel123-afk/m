// Módulo 1: Entrada
SubProceso LeerServicio(horas Por Referencia, tarifa Por Referencia)
    Escribir "Ingresa la cantidad de horas trabajadas:"
    Leer horas
    Escribir "Ingresa la tarifa por hora:"
    Leer tarifa
FinSubProceso

// Módulo 2: Proceso
SubProceso costo <- CalcularCosto(horas, tarifa)
    Definir costo Como Real
    costo <- horas * tarifa
FinSubProceso

// Módulo 3: Salida
SubProceso MostrarCosto(costo)
    Escribir "El costo total es: $", costo
FinSubProceso

Algoritmo PrincipalTarifa
    Definir h, t, totalCosto Como Real
    LeerServicio(h, t)
    totalCosto <- CalcularCosto(h, t)
    MostrarCosto(totalCosto)
FinAlgoritmo

