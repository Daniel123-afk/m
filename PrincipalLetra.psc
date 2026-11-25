// Módulo 1: Entrada
SubProceso LeerLetra(letra Por Referencia)
    Escribir "Ingresa una letra del alfabeto:"
    Leer letra
FinSubProceso

// Módulo 2: Proceso
SubProceso letraFinal <- ProcesarLetra(letra)
    Definir letraFinal Como Caracter
    letraFinal <- letra
FinSubProceso

// Módulo 3: Salida
SubProceso MostrarLetra(letra)
    Escribir "La letra asignada es: ", letra
FinSubProceso

Algoritmo PrincipalLetra
    Definir letra, resultado Como Caracter
    LeerLetra(letra)
    resultado <- ProcesarLetra(letra)
    MostrarLetra(resultado)
FinAlgoritmo

