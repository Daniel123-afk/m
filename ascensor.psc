// MÓDULO 1: Pide el número de piso al usuario
SubProceso piso <- PedirPiso
	Definir piso Como Entero
	Escribir "El edificio tiene pisos del 1 al 10."
	Escribir "¿A qué piso desea ir?:"
	Leer piso
FinSubProceso

// MÓDULO 2: Verifica si el piso está en el rango válido (1 a 10)
SubProceso esValido <- VerificarPiso (piso)
	Definir esValido Como Logico
	
	Si piso >= 1 Y piso <= 10 Entonces
		esValido <- Verdadero
	Sino
		esValido <- Falso
	FinSi
FinSubProceso

// MÓDULO 3: Mueve el ascensor o muestra el error
SubProceso MoverAscensor (piso, esValido)
	Si esValido = Verdadero Entonces
		Escribir "Subiendo/Bajando... Has llegado al piso ", piso, "."
	Sino
		Escribir "Error: El piso ", piso, " no existe en este edificio."
	FinSi
FinSubProceso

// PROGRAMA PRINCIPAL
Proceso SimuladorAscensor
	Definir pisoDeseado Como Entero
	Definir pisoCorrecto Como Logico
	
	pisoDeseado <- PedirPiso()
	pisoCorrecto <- VerificarPiso(pisoDeseado)
	MoverAscensor(pisoDeseado, pisoCorrecto)
FinProceso

