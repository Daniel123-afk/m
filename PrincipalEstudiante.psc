// Módulo 1: Entrada
SubProceso LeerEstado(esEstudiante Por Referencia)
    Escribir "¿Es usted estudiante? (Verdadero/Falso):"
    Leer esEstudiante
FinSubProceso

// Módulo 2: Proceso
SubProceso estadoFinal <- ProcesarEstado(esEstudiante)
    Definir estadoFinal Como Logico
    estadoFinal <- esEstudiante
FinSubProceso

// Módulo 3: Salida
SubProceso MostrarEstado(esEstudiante)
    Escribir "¿Es usted estudiante? [Verdadero/Falso]: ", esEstudiante
FinSubProceso

Algoritmo PrincipalEstudiante
    Definir esEstudiante, resultado Como Logico
    LeerEstado(esEstudiante)
    resultado <- ProcesarEstado(esEstudiante)
    MostrarEstado(resultado)
FinAlgoritmo

