Algoritmo ValidarEdad
	
	Escribir "Validacion de Edad entre 0 y 120 años"
	
	Definir Edad Como Entero
	Escribir "Ingrese Edad"
	Leer Edad
	
	Si Edad > 120 o Edad < 0 Entonces
		Escribir "Tienes ",Edad, " a�os, no es una edad valida"
	SiNo
		Si Edad >= 0 o Edad <= 120 Entonces
			Escribir "Tienes ",Edad, " a�os, si es una edad valida"
		FinSi
	Fin Si
FinAlgoritmo
