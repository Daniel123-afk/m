// MÓDULO 1: Pide los datos al usuario
SubProceso PedirDatos (paginas Por Referencia, precio Por Referencia)
	Escribir "Cuántas páginas vas a imprimir:"
	Leer paginas
	Escribir "Cuánto vale cada página:"
	Leer precio
FinSubProceso

// MÓDULO 2: Multiplica para sacar el total
SubProceso total <- CalcularCosto (paginas, precio)
	Definir total Como Real
	total <- paginas * precio
FinSubProceso

// MÓDULO 3: Muestra el resultado
SubProceso MostrarTotal (total)
	Escribir "El costo total de impresión es: $", total
FinSubProceso

// PROGRAMA PRINCIPAL
Proceso CostoImpresion
	Definir paginas Como Entero
	Definir precio, totalPagar Como Real
	
	PedirDatos(paginas, precio)
	totalPagar <- CalcularCosto(paginas, precio)
	MostrarTotal(totalPagar)
FinProceso

