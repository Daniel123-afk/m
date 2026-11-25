// Módulo 1: Entrada
SubProceso LeerCelsius(celsius Por Referencia)
    Escribir "Ingresa la temperatura en grados Celsius:"
    Leer celsius
FinSubProceso

// Módulo 2: Proceso
SubProceso fahrenheit <- ConvertirAFahrenheit(celsius)
    Definir fahrenheit Como Real
    fahrenheit <- (celsius * 9 / 5) + 32
FinSubProceso

// Módulo 3: Salida
SubProceso MostrarTemperatura(fahrenheit)
    Escribir "La temperatura en grados Fahrenheit es: ", fahrenheit, " °F"
FinSubProceso

Algoritmo PrincipalTemperatura
    Definir c, f Como Real
    LeerCelsius(c)
    f <- ConvertirAFahrenheit(c)
    MostrarTemperatura(f)
FinAlgoritmo

