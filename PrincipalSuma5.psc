// Módulo 1: Entrada
SubProceso LeerNumeros(n1 Por Referencia, n2 Por Referencia, n3 Por Referencia, n4 Por Referencia, n5 Por Referencia)
    Escribir "Ingresa 5 números:"
    Leer n1, n2, n3, n4, n5
FinSubProceso

// Módulo 2: Proceso
SubProceso suma <- CalcularSuma(n1, n2, n3, n4, n5)
    Definir suma Como Real
    suma <- n1 + n2 + n3 + n4 + n5
FinSubProceso

// Módulo 3: Salida
SubProceso MostrarSuma(suma)
    Escribir "La suma total de los 5 números es: ", suma
FinSubProceso

Algoritmo PrincipalSuma5
    Definir n1, n2, n3, n4, n5, total Como Real
    LeerNumeros(n1, n2, n3, n4, n5)
    total <- CalcularSuma(n1, n2, n3, n4, n5)
    MostrarSuma(total)
FinAlgoritmo

