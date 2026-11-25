// =======================================================
// MÓDULO 1: Pide datos y calcula la velocidad de un carro
// =======================================================
SubProceso velocidad <- CalcularVelocidad (numCarro)
	Definir distancia, tiempo, velocidad Como Real
	
	Escribir "----------------------------------------"
	Escribir "DATOS DEL CARRO #", numCarro
	Escribir Sin Saltar "Ingrese la distancia recorrida (km): "
	Leer distancia
	
	// Validamos que el tiempo sea mayor a 0 para evitar división por cero
	Repetir
		Escribir Sin Saltar "Ingrese el tiempo empleado (horas): "
		Leer tiempo
		Si tiempo <= 0 Entonces
			Escribir "Error: El tiempo debe ser mayor a cero."
		FinSi
	Hasta Que tiempo > 0
	
	velocidad <- distancia / tiempo
FinSubProceso


// =======================================================
// MÓDULO 2: Calcula el promedio de las dos velocidades
// =======================================================
SubProceso promedio <- CalcularPromedio (vel1, vel2)
	Definir promedio Como Real
	promedio <- (vel1 + vel2) / 2
FinSubProceso


// =======================================================
// MÓDULO 3: Muestra los resultados en pantalla
// =======================================================
SubProceso MostrarResultados (vel1, vel2, prom)
	Escribir ""
	Escribir "========================================"
	Escribir "         RESULTADOS DE VELOCIDAD        "
	Escribir "========================================"
	Escribir "Velocidad Carro 1: ", vel1, " km/h"
	Escribir "Velocidad Carro 2: ", vel2, " km/h"
	Escribir "----------------------------------------"
	Escribir "Promedio de velocidad: ", prom, " km/h"
	Escribir "========================================"
FinSubProceso


// =======================================================
// ALGORITMO PRINCIPAL
// =======================================================
Proceso PromedioVelocidadCarros
	Definir v1, v2, promedioVel Como Real
	
	Escribir "CÁLCULO DE VELOCIDAD PROMEDIO DE DOS CARROS"
	
	// Llamadas al Módulo 1 para cada carro
	v1 <- CalcularVelocidad(1)
	v2 <- CalcularVelocidad(2)
	
	// Llamada al Módulo 2 para promediar
	promedioVel <- CalcularPromedio(v1, v2)
	
	// Llamada al Módulo 3 para mostrar todo
	MostrarResultados(v1, v2, promedioVel)
FinProceso

