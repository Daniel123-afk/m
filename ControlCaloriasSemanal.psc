// =======================================================
// MÓDULO 1: Suma las calorías de un solo día
// =======================================================
SubProceso totalDia <- CalcularDia (nombreDia)
	Definir caloria, totalDia Como Real
	totalDia <- 0
	
	Escribir "----------------------------------------"
	Escribir "REGISTRO DEL DÍA: ", nombreDia
	Escribir "Ingrese las calorías de cada comida (escriba 0 para terminar el día):"
	
	Repetir
		Escribir Sin Saltar "Calorías: "
		Leer caloria
		
		Si caloria < 0 Entonces
			Escribir "Error: No puede ingresar calorías negativas."
		Sino
			totalDia <- totalDia + caloria
		FinSi
	Hasta Que caloria = 0
	
	Escribir ">> Total consumido el ", nombreDia, ": ", totalDia, " kcal."
FinSubProceso


// =======================================================
// MÓDULO 2: Recorre los 7 días y acumula el total semanal
// =======================================================
SubProceso totalSemana <- CalcularSemana
	Definir i Como Entero
	Definir totalSemana, caloriasHoy Como Real
	Definir diaTexto Como Caracter
	totalSemana <- 0
	
	Para i <- 1 Hasta 7 Con Paso 1 Hacer
		Segun i Hacer
			1: diaTexto <- "Lunes"
			2: diaTexto <- "Martes"
			3: diaTexto <- "Miércoles"
			4: diaTexto <- "Jueves"
			5: diaTexto <- "Viernes"
			6: diaTexto <- "Sábado"
			7: diaTexto <- "Domingo"
		FinSegun
		
		// Llamada al Módulo 1
		caloriasHoy <- CalcularDia(diaTexto)
		totalSemana <- totalSemana + caloriasHoy
	FinPara
FinSubProceso


// =======================================================
// MÓDULO 3: Muestra los resultados y el promedio
// =======================================================
SubProceso MostrarResumen (totalSemana)
	Definir promedio Como Real
	promedio <- totalSemana / 7
	
	Escribir ""
	Escribir "========================================"
	Escribir "       RESUMEN SEMANAL DE CALORÍAS      "
	Escribir "========================================"
	Escribir "Total acumulado en la semana: ", totalSemana, " kcal"
	Escribir "Promedio diario de consumo:   ", promedio, " kcal"
	Escribir "========================================"
FinSubProceso


// =======================================================
// ALGORITMO PRINCIPAL
// =======================================================
Proceso ControlCaloriasSemanal
	Definir granTotal Como Real
	
	Escribir "BIENVENIDO AL SISTEMA DE CONTROL DE CALORÍAS"
	
	// Llamada al Módulo 2 (que a su vez llama al Módulo 1)
	granTotal <- CalcularSemana()
	
	// Llamada al Módulo 3
	MostrarResumen(granTotal)
FinProceso

