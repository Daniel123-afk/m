// Módulo 1: Entrada
SubProceso LeerNotas(m1 Por Referencia, m2 Por Referencia, m3 Por Referencia)
    Definir n1, n2, n3 Como Real
    Escribir "Ingresa las 3 notas de la Materia 1:"
    Leer n1, n2, n3
    m1 <- (n1 + n2 + n3) / 3
    
    Escribir "Ingresa las 3 notas de la Materia 2:"
    Leer n1, n2, n3
    m2 <- (n1 + n2 + n3) / 3
    
    Escribir "Ingresa las 3 notas de la Materia 3:"
    Leer n1, n2, n3
    m3 <- (n1 + n2 + n3) / 3
FinSubProceso

// Módulo 2: Proceso
SubProceso promGeneral <- CalcularPromedioGeneral(m1, m2, m3)
    Definir promGeneral Como Real
    promGeneral <- (m1 + m2 + m3) / 3
FinSubProceso

// Módulo 3: Salida
SubProceso MostrarPromedios(m1, m2, m3, promGeneral)
    Escribir "Promedio Materia 1: ", m1
    Escribir "Promedio Materia 2: ", m2
    Escribir "Promedio Materia 3: ", m3
    Escribir "Promedio General: ", promGeneral
FinSubProceso

Algoritmo PrincipalNotas
    Definir m1, m2, m3, general Como Real
    LeerNotas(m1, m2, m3)
    general <- CalcularPromedioGeneral(m1, m2, m3)
    MostrarPromedios(m1, m2, m3, general)
FinAlgoritmo

