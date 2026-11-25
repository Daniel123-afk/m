// =======================================================
// MÓDULO 1: Pide horas y minutos de 1 tramo y devuelve el total en minutos
// =======================================================
SubProceso minutosTramo <- LeerTramoEnMinutos (numTramo)
	Definir horas, minutos, minutosTramo Como Entero
	
	Escribir "----------------------------------------"
	Escribir "TRAMO #", numTramo
	
	Repetir
		Escribir Sin Saltar "Horas del tramo: "
		Leer horas
		Si horas < 0 Entonces
			Escribir "Error: Las horas no pueden ser negativas."
		FinSi
	Hasta Que horas >= 0
	
	Repetir
		Escribir Sin Saltar "Minutos del tramo (0 - 59): "
		Leer minutos
		Si minutos < 0 O minutos >= 60 Entonces
			Escribir "Error: Ingrese minutos válidos entre 0 y 59."
		FinSi
	Hasta Que minutos >= 0 Y minutos < 60
	
	// Convertimos todo a minutos para facilitar la suma
	minutosTramo <- (horas * 60) + minutos
FinSubProceso


// =======================================================
// MÓDULO 2: Suma los tiempos parciales de todos los tramos
// =======================================================
SubProceso totalMinutos <- SumarTiemposViaje
	Definir n, i, totalMinutos, tiempoTramo Como Entero
	totalMinutos <- 0
	
	Repetir
		Escribir Sin Saltar "¿Cuántos tramos o paradas tuvo el viaje?: "
		Leer n
		Si n <= 0 Entonces
			Escribir "Error: Debe ingresar al menos 1 tramo."
		FinSi
	Hasta Que n > 0
	
	Para i <- 1 Hasta n Con Paso 1 Hacer
		// Llamada al Módulo 1
		tiempoTramo <- LeerTramoEnMinutos(i)
		totalMinutos <- totalMinutos + tiempoTramo
	FinPara
FinSubProceso


// =======================================================
// MÓDULO 3: Convierte los minutos totales a horas/minutos y los muestra
// =======================================================
SubProceso MostrarTiempoTotal (totalMinutos)
	Definir horasFinales, minutosFinales Como Entero
	
	// Cálculo de horas exactas y minutos sobrantes
	horasFinales <- trunc(totalMinutos / 60)
	minutosFinales <- totalMinutos MOD 60
	
	Escribir ""
	Escribir "========================================"
	Escribir "         TIEMPO TOTAL DE VIAJE          "
	Escribir "========================================"
	Escribir "Duración total: ", horasFinales, " hora(s) y ", minutosFinales, " minuto(s)."
	Escribir "Equivalente en minutos: ", totalMinutos, " min."
	Escribir "========================================"
FinSubProceso


// =======================================================
// ALGORITMO PRINCIPAL
// =======================================================
Proceso CalculoTiempoViaje
	Definir acumuladoMinutos Como Entero
	
	Escribir "CALCULADORA DE TIEMPO TOTAL DE VIAJE"
	
	// Llamada al Módulo 2 (que a su vez llama al Módulo 1)
	acumuladoMinutos <- SumarTiemposViaje()
	
	// Llamada al Módulo 3
	MostrarTiempoTotal(acumuladoMinutos)
FinProceso

