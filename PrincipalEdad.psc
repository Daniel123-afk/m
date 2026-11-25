// Módulo 1: Entrada
SubProceso LeerEdad(edad Por Referencia)
    Escribir "Ingresa tu edad:"
    Leer edad
FinSubProceso

// Módulo 2: Proceso
SubProceso edadProcesada <- ProcesarEdad(edad)
    Definir edadProcesada Como Entero
    edadProcesada <- edad
FinSubProceso

// Módulo 3: Salida
SubProceso MostrarEdad(edad)
    Escribir "Tienes ", edad, " años"
FinSubProceso

Algoritmo PrincipalEdad
    Definir edad, resultado Como Entero
    LeerEdad(edad)
    resultado <- ProcesarEdad(edad)
    MostrarEdad(resultado)
FinAlgoritmo

