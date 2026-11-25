// =======================================================
// MÓDULO 1: Pide datos de 1 producto y acumula sus totales
// =======================================================
SubProceso ProcesarProducto (numProd, acumUnidades Por Referencia, acumDinero Por Referencia)
	Definir nombre Como Caracter
	Definir cantidad Como Entero
	Definir precio, subtotal Como Real
	
	Escribir "----------------------------------------"
	Escribir "PRODUCTO #", numProd
	Escribir Sin Saltar "Nombre del producto: "
	Leer nombre
	
	// Validamos cantidad positiva o cero
	Repetir
		Escribir Sin Saltar "Unidades vendidas: "
		Leer cantidad
		Si cantidad < 0 Entonces
			Escribir "Error: Las unidades no pueden ser negativas."
		FinSi
	Hasta Que cantidad >= 0
	
	// Validamos precio positivo
	Repetir
		Escribir Sin Saltar "Precio unitario ($): "
		Leer precio
		Si precio < 0 Entonces
			Escribir "Error: El precio no puede ser negativo."
		FinSi
	Hasta Que precio >= 0
	
	subtotal <- cantidad * precio
	Escribir ">> Subtotal ", nombre, ": $", subtotal
	
	// Actualizamos los acumuladores generales
	acumUnidades <- acumUnidades + cantidad
	acumDinero <- acumDinero + subtotal
FinSubProceso


// =======================================================
// MÓDULO 2: Controla el registro de los 3 productos
// =======================================================
SubProceso CalcularTotalGeneral (totalUnidades Por Referencia, totalPagar Por Referencia)
	Definir i Como Entero
	totalUnidades <- 0
	totalPagar <- 0
	
	Para i <- 1 Hasta 3 Con Paso 1 Hacer
		// Llamada al Módulo 1
		ProcesarProducto(i, totalUnidades, totalPagar)
	FinPara
FinSubProceso


// =======================================================
// MÓDULO 3: Muestra el resumen final de la venta
// =======================================================
SubProceso MostrarFactura (totalUnidades, totalPagar)
	Escribir ""
	Escribir "========================================"
	Escribir "           RESUMEN DE VENTAS            "
	Escribir "========================================"
	Escribir "Total de unidades vendidas: ", totalUnidades
	Escribir "Total a pagar:              $", totalPagar
	Escribir "========================================"
FinSubProceso


// =======================================================
// ALGORITMO PRINCIPAL
// =======================================================
Proceso VentasTresProductos
	Definir unidadesTotales Como Entero
	Definir montoTotal Como Real
	
	Escribir "SISTEMA DE REGISTRO DE VENTAS (3 PRODUCTOS)"
	
	// Llamada al Módulo 2 (que a su vez llama al Módulo 1)
	CalcularTotalGeneral(unidadesTotales, montoTotal)
	
	// Llamada al Módulo 3
	MostrarFactura(unidadesTotales, montoTotal)
FinProceso

