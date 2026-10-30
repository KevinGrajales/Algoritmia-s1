Algoritmo Calculadora_Propinas
	
    Propina<-0
    Total<-0
    Porcentaje<-0
    Cada_uno<-0
    Personas<-0
    Cuenta<-0
    Subtotal<-0

    Escribir "Ingrese Cantidad de personas que estan en el restaurante"
    leer Personas

    Escribir "Ingrese el valor a pagar que aparece en la factura"
    leer Cuenta

    Escribir "Ingrese el porcentaje de propina que aparece en la factura"
    leer Porcentaje

	Propina <- Cuenta*Porcentaje/100
    Escribir "Se debe pagar ",Propina, " de Propina"

	Total <- Cuenta+Propina
    Escribir "El total a pagar de su factura es: ",Total

    Subtotal<-Total*0,19
    Escribir "El Subtotal con el IVA incluido es  ",Subtotal

	Cada_uno <- Total / Personas
	Escribir "Cada persona le corresponde aportar con: ",Cada_uno

    

FinAlgoritmo
