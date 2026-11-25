// =======================================================
// MÓDULO 1: Calcula el valor a pagar de un solo servicio
// =======================================================
SubProceso costoServicio <- CalcularCostoServicio (numServicio)
	Definir nombreServicio Como Caracter
	Definir consumo, tarifa, costoServicio Como Real
	
	Escribir "----------------------------------------"
	Escribir "SERVICIO #", numServicio
	Escribir Sin Saltar "Nombre del servicio (ej. Luz, Agua, Gas): "
	Leer nombreServicio
	
	// Validamos que el consumo sea mayor o igual a cero
	Repetir
		Escribir Sin Saltar "Consumo del mes (unidades/kWh/m3): "
		Leer consumo
		Si consumo < 0 Entonces
			Escribir "Error: El consumo no puede ser negativo."
		FinSi
	Hasta Que consumo >= 0
	
	// Validamos que la tarifa sea mayor o igual a cero
	Repetir
		Escribir Sin Saltar "Tarifa por unidad ($): "
		Leer tarifa
		Si tarifa < 0 Entonces
			Escribir "Error: La tarifa no puede ser negativa."
		FinSi
	Hasta Que tarifa >= 0
	
	costoServicio <- consumo * tarifa
	Escribir ">> Total ", nombreServicio, ": $", costoServicio
FinSubProceso


// =======================================================
// MÓDULO 2: Suma el costo de todos los servicios registrados
// =======================================================
SubProceso totalPagar <- SumarServicios
	Definir n, i Como Entero
	Definir totalPagar, valorActual Como Real
	totalPagar <- 0
	
	Repetir
		Escribir Sin Saltar "¿Cuántos servicios públicos desea calcular?: "
		Leer n
		Si n <= 0 Entonces
			Escribir "Error: Debe ingresar al menos 1 servicio."
		FinSi
	Hasta Que n > 0
	
	Para i <- 1 Hasta n Con Paso 1 Hacer
		// Llamada al Módulo 1
		valorActual <- CalcularCostoServicio(i)
		totalPagar <- totalPagar + valorActual
	FinPara
FinSubProceso


// =======================================================
// MÓDULO 3: Muestra el recibo con el total general a pagar
// =======================================================
SubProceso MostrarReciboTotal (totalPagar)
	Escribir ""
	Escribir "========================================"
	Escribir "      RESUMEN DE PAGO DE SERVICIOS      "
	Escribir "========================================"
	Escribir "TOTAL GENERAL A PAGAR: $", totalPagar
	Escribir "========================================"
FinSubProceso


// =======================================================
// ALGORITMO PRINCIPAL
// =======================================================
Proceso PagoServiciosPublicos
	Definir granTotal Como Real
	
	Escribir "SISTEMA DE LIQUIDACIÓN DE SERVICIOS"
	
	// Llamada al Módulo 2 (que a su vez llama al Módulo 1)
	granTotal <- SumarServicios()
	
	// Llamada al Módulo 3
	MostrarReciboTotal(granTotal)
FinProceso

