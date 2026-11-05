Algoritmo Anio_Bisiesto

    Definir Anio Como Entero

    Escribir "Validacion de año bisiesto"

    Escribir "Ingrese el año que desea validar:"
    Leer Anio

    Si (Anio MOD 400 = 0) O (Anio MOD 4 = 0 Y Anio MOD 100 <> 0) Entonces
        Escribir Anio, " es un año bisiesto"
    SiNo
        Escribir Anio, " no es un año bisiesto"
    FinSi

FinAlgoritmo