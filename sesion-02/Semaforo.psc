Algoritmo Semaforo
	
	Escribir "Eres dueño de una tienda y estas haciendo inventario de Choclitos"
	Escribir "Vamos a validar el stock"
	
	Definir unidades Como Entero 
	
	Escribir "Ingrese las unidades disponibles en el stock"
	Leer unidades
	
	Si unidades < 0 Entonces
		Escribir "ROJO - Error, ", unidades, " no es un valor valido"
	SiNo
		Si unidades = 0 Entonces
			Escribir "ROJO - Apagado, ", unidades, " unidades indican que no hay stock disponible"
		SiNo
			Si unidades >= 1 o unidades <= 10 Entonces
				Escribir "AMARILLO - Pedir, hay ", unidades, " unidades, es recomendable pedir almenos 10 mas"
			FinSi
		SiNo
			Si unidades > 10 Entonces
				Escribir "VERDE - todo bien, hay ", unidades, " unidades en el stock, por ahora hay suficientes, no pidas mas"
			FinSi
		FinSi
	Fin Si
	
FinAlgoritmo
