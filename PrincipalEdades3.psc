// Módulo 1: Entrada
SubProceso LeerAnios(anioActual Por Referencia, nac1 Por Referencia, nac2 Por Referencia, nac3 Por Referencia)
    Escribir "Ingresa el año actual:"
    Leer anioActual
    Escribir "Ingresa el año de nacimiento de la Persona 1:"
    Leer nac1
    Escribir "Ingresa el año de nacimiento de la Persona 2:"
    Leer nac2
    Escribir "Ingresa el año de nacimiento de la Persona 3:"
    Leer nac3
FinSubProceso

// Módulo 2: Proceso
SubProceso CalcularEdades(anioActual, nac1, nac2, nac3, edad1 Por Referencia, edad2 Por Referencia, edad3 Por Referencia)
    edad1 <- anioActual - nac1
    edad2 <- anioActual - nac2
    edad3 <- anioActual - nac3
FinSubProceso

// Módulo 3: Salida
SubProceso MostrarEdades(edad1, edad2, edad3)
    Escribir "Edad Persona 1: ", edad1, " años"
    Escribir "Edad Persona 2: ", edad2, " años"
    Escribir "Edad Persona 3: ", edad3, " años"
FinSubProceso

Algoritmo PrincipalEdades3
    Definir actual, n1, n2, n3, e1, e2, e3 Como Entero
    LeerAnios(actual, n1, n2, n3)
    CalcularEdades(actual, n1, n2, n3, e1, e2, e3)
    MostrarEdades(e1, e2, e3)
FinAlgoritmo

