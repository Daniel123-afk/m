// MODULO 1: Pedir la temperatura
SubProceso PedirTemperaturaAlerta (temp por referencia)
	Escribir "Ingresa la temperatura actual (°C):"
	Leer temp
FinSubProceso

//MODULO 2: Verificar si supera el umbral de alerta (ej. 30°C)
Funcion hay_alerta <- ValidarAlerta(temp)
	Definir hay_alerta Como Logico
	Definir umbral Como Real
	umbral <- 30
	
	Si Temp > umbral entonces 
		hay_alerta <- Verdadero
	SiNo
		hay_alerta <- Falso 
	FinSi
FinFuncion

// MODULO 3: Mostrar el resultado 
SubProceso MostrarAlerta(hay_alerta)
	Si hay_alerta entonces 
		escribir "¡ALERTA! La temperatura esta por encima del umbral."
	SiNo
		escribir "La temperatura es normal."
	FinSi
FinSubProceso

// ALGORITMO PRINCIPAL 
Algoritmo SensorAlertaModular
	Definir Temperatura Como Real
	Definir Alerta Como Logico
	
	PedirTemperaturaAlerta(temperatura)
	alerta <- ValidarAlerta(temperatura)
	MostrarAlerta(alerta)
FinAlgoritmo
	