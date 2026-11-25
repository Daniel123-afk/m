// Módulo 1: Entrada
SubProceso LeerDatosIMC(p1 Por Referencia, a1 Por Referencia, p2 Por Referencia, a2 Por Referencia)
    Escribir "Persona 1 - Ingresa peso (kg) y altura (m):"
    Leer p1, a1
    Escribir "Persona 2 - Ingresa peso (kg) y altura (m):"
    Leer p2, a2
FinSubProceso

// Módulo 2: Proceso
SubProceso CalcularIMC(p1, a1, p2, a2, imc1 Por Referencia, imc2 Por Referencia)
    imc1 <- p1 / (a1 * a1)
    imc2 <- p2 / (a2 * a2)
FinSubProceso

// Módulo 3: Salida
SubProceso MostrarIMC(imc1, imc2)
    Escribir "El IMC de la Persona 1 es: ", imc1
    Escribir "El IMC de la Persona 2 es: ", imc2
FinSubProceso

Algoritmo PrincipalIMC
    Definir peso1, alt1, peso2, alt2, res1, res2 Como Real
    LeerDatosIMC(peso1, alt1, peso2, alt2)
    CalcularIMC(peso1, alt1, peso2, alt2, res1, res2)
    MostrarIMC(res1, res2)
FinAlgoritmo

