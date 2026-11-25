// MODULO 1: Pedir la temperatura al usuario 
SubProceso PedirTemperatura(temp por referencia)
	Escribir "Ingresa la temperatura actual (°C):"
	leer temp
FinSubProceso

// MODULO 2: verificar si esta adenrtro del rango (18°c a 25°c)
Funcion es_adecuada <- ValidarTemperatura(temp)
	Definir es_adecuada Como Logico
	
	si temp >= 18 y temp <= 25 entonces 
		es_adecuada <- Verdadero
	SiNo
		es_adecuada <- Falso 
	FinSi
FinFuncion

// MODULO 3: mostrar el mensaje FinAlgoritmo
subproceso MostrarResultadoTemp(es_adecuada)
	si es_adecuada Entonces
		escribir "La temperatura es adecuada."
	sino
		escribir "La temperatura esta fuera del resultado deseado."
	FinSi
FinSubProceso

// ALGORITMO PRINCIPAL 
Algoritmo SensorTemperaturaModular
	Definir temperatura Como Real
	Definir adecuada Como Logico
	
	PedirTemperatura(Temperatura)
	adecuada <- ValidarTemperatura(Temperatura)
	MostrarResultadoTemp(adecuada)
FinAlgoritmo
	