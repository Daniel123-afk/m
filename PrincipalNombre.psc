// Módulo 1: Entrada
SubProceso LeerDatos(nombre Por Referencia, apellido Por Referencia)
    Escribir "Ingresa tu nombre:"
    Leer nombre
    Escribir "Ingresa tu apellido:"
    Leer apellido
FinSubProceso

// Módulo 2: Proceso
SubProceso mensaje <- ProcesarDatos(nombre, apellido)
    Definir mensaje Como Caracter
    mensaje <- "Bienvenido, " + nombre + " " + apellido
FinSubProceso

// Módulo 3: Salida
SubProceso MostrarResultado(mensaje)
    Escribir mensaje
FinSubProceso

Algoritmo PrincipalNombre
    Definir nombre, apellido, mensajeFinal Como Caracter
    LeerDatos(nombre, apellido)
    mensajeFinal <- ProcesarDatos(nombre, apellido)
    MostrarResultado(mensajeFinal)
FinAlgoritmo

