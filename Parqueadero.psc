Algoritmo Parqueadero
	
	Definir TipoVehiculo Como Caracter
	Definir Minutos Como Entero
	Definir Esprado Como Caracter
	Definir Fact Como Caracter 
	
	
	
	
	
	Escribir "¿Que tipo de vehiculo guardo en el parqueadero?"
	Leer TipoVehiculo
	TipoVehiculo <- Mayusculas(TipoVehiculo)
	
	Escribir "Que cantidad de minutos guardó su vehiculo"
	Leer Minutos
	
	Escribir "Tiene factura de descuento? (Si/No)"
	Leer Fact
	Fact <- Mayusculas(Fact)
	
	
	
	
	horasMOD <- Minutos MOD 60
	HorasTotales <- Trunc(Minutos / 60)
	
	
	
	
	
	
	Si horasMOD > 0 Entonces
		HorasTotales <- HorasTotales + 1
	FinSi
	
	
	Escribir "Su vehiculo permanecio en el parqueadero ", Minutos , " minutos, es decir ", HorasTotales, " hora/s"
	
	
	Si TipoVehiculo = "CARRO" y Minutos <= 15 Entonces
		Esperado <- 0
	SiNo
		Si TipoVehiculo = "MOTO" y Minutos <= 15 Entonces
			Esperado <- 0
		SiNo
			Si TipoVehiculo = "CARRO" y Minutos > 15 y Fact = "SI" Entonces
				Esperado <- ((HorasTotales *4000) / 2)
			SiNo
				Si TipoVehiculo = "CARRO" y Minutos > 15 y Fact = "NO" Entonces
					Esperado <- HorasTotales * 4000
				SiNo
					Si TipoVehiculo = "MOTO" y Minutos > 15 y Fact = "SI" Entonces
					Esperado <- (HorasTotales*2000) / 2
				SiNo
					Si TipoVehiculo = "MOTO" y Minutos > 15 y Fact = "NO" Entonces
						Esperado <- HorasTotales*2000
					FinSi
				Finsi
			FinSi
		FinSi
	FinSi
	
			
			Escribir "y el valor a pagar es: ",Esperado 
	
	FinSi
	
FinAlgoritmo 
