// MODULO 1:Pedir los datos del usuario 
Subproceso PedirDatosAscensor(peso por referencia, piso por referencia)
	Escribir "Ingresa tu peso (en kg):"
	leer peso
	escribir "¿A que piso deseas ir?:"
	leer piso
FinSubProceso

// MODULO 2:Verificar si el peso esta permitido
Funcion permitido <- ValidarPeso(Peso)
	Definir permitido Como Logico
	Definir limite_peso Como Real
	limite_peso <- 100
	
	Si peso <= limite_peso entonces 
		permitido <- verdadero
	SiNo
		permitido <- Falso
	FinSi
FinFuncion

// MODULO 3: Mostrar el mensaje final 
Subproceso MostrarResultadoAscensor(permitido, piso)
	si permitido entonces
		escribir "Moviendo el ascensor al piso ", piso, "..."
	SiNo
		escribir "El ascensor esta sobrecargado."
    Finsi
FinSubProceso

// ALGORITMO PRINCIPAL
Algoritmo AscensorModular 
	Definir peso Como Real
	Definir piso Como Entero
	Definir puede_subir como logico
	
	PedirDatosAscensor(peso, piso)
	puede_subir <- ValidarPeso(peso)
	MostrarResultadoAscensor(puede_subir, piso)
FinAlgoritmo

	