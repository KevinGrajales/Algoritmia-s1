Tablas de decision de todos los algoritmos:

============================================================
BITÁCORA DE ALGORITMIA
TABLAS DE DECISIÓN
============================================================

1. ALGORITMO: AÑO BISIESTO
------------------------------------------------------------

Objetivo:
Determinar si un año es bisiesto o no, utilizando las reglas de divisibilidad del calendario gregoriano.

CONDICIONES:
C1: ¿El año es divisible entre 400?
C2: ¿El año es divisible entre 4?
C3: ¿El año es divisible entre 100?

TABLA DE DECISIÓN:

Regla                         R1       R2       R3       R4
------------------------------------------------------------
C1: Divisible entre 400       SI       NO       NO       NO
C2: Divisible entre 4         SI       SI       NO       SI
C3: Divisible entre 100       SI       NO       NO       SI
------------------------------------------------------------
Resultado                    SI       SI       NO       NO
                            Bisiesto Bisiesto No bisiesto No bisiesto

Ejemplos:
R1: 2000 - Bisiesto.
R2: 2024 - Bisiesto.
R3: 2025 - No bisiesto.
R4: 1900 - No bisiesto.

Lógica:
Un año es bisiesto si es divisible entre 400, o si es divisible entre 4 y no es divisible entre 100.

============================================================
2. ALGORITMO: PARQUEADERO
------------------------------------------------------------

Objetivo:
Calcular el valor a pagar por el estacionamiento de un vehículo, teniendo en cuenta el tipo de vehículo, el tiempo de permanencia y si presenta factura para obtener un descuento.

CONDICIONES:
C1: ¿El vehículo es un carro?
C2: ¿El vehículo es una moto?
C3: ¿El tiempo de permanencia es menor o igual a 15 minutos?
C4: ¿Presenta factura de descuento?

TABLA DE DECISIÓN:

Regla                         R1       R2       R3       R4       R5       R6
-----------------------------------------------------------------------------
C1: Es carro                  SI       NO       SI       SI       NO       NO
C2: Es moto                   NO       SI       NO       NO       SI       SI
C3: Tiempo <= 15 minutos      SI       SI       NO       NO       NO       NO
C4: Tiene factura             -        -        SI       NO       SI       NO
-----------------------------------------------------------------------------
Acción: Valor a pagar         $0       $0       $2.000   $4.000   $1.000   $2.000
                              Gratis   Gratis   Por hora Por hora Por hora Por hora

Consideraciones:
- Los primeros 15 minutos son gratuitos.
- Cada hora o fracción se cobra como una hora completa.
- El carro tiene una tarifa de $4.000 por hora.
- La moto tiene una tarifa de $2.000 por hora.
- Presentar factura permite obtener un descuento del 50%.

Ejemplo:
Un carro permanece 90 minutos en el parqueadero y presenta factura.
90 minutos equivalen a 2 horas cobradas.
2 x $4.000 = $8.000.
Aplicando el 50% de descuento, debe pagar $4.000.

============================================================
3. ALGORITMO: VALIDAR EDAD
------------------------------------------------------------

Objetivo:
Validar si una edad ingresada se encuentra dentro del rango permitido de 0 a 120 años.

CONDICIONES:
C1: ¿La edad es menor que 0?
C2: ¿La edad es mayor que 120?

TABLA DE DECISIÓN:

Regla                         R1       R2       R3
----------------------------------------------------
C1: Edad < 0                  SI       NO       NO
C2: Edad > 120                NO       SI       NO
----------------------------------------------------
Resultado                    Edad    Edad     Edad
                              inválida inválida válida

Ejemplos:
R1: -5 años - Edad inválida.
R2: 125 años - Edad inválida.
R3: 25 años - Edad válida.

Consideraciones:
- La edad mínima permitida es 0 años.
- La edad máxima permitida es 120 años.
- Los valores 0 y 120 son válidos.

============================================================
4. ALGORITMO: SEMÁFORO DE INVENTARIO (CHOCOLITOS)
------------------------------------------------------------

Objetivo:
Validar la cantidad de unidades disponibles en el inventario y determinar si es necesario solicitar más productos.

CONDICIONES:
C1: ¿Las unidades son menores que 0?
C2: ¿Las unidades son iguales a 0?
C3: ¿Las unidades están entre 1 y 10?
C4: ¿Las unidades son mayores que 10?

TABLA DE DECISIÓN:

Regla                         R1       R2       R3       R4
------------------------------------------------------------
C1: Unidades < 0              SI       NO       NO       NO
C2: Unidades = 0              NO       SI       NO       NO
C3: Unidades entre 1 y 10     NO       NO       SI       NO
C4: Unidades > 10             NO       NO       NO       SI
------------------------------------------------------------
Acción                        ROJO     ROJO     AMARILLO VERDE
Resultado                     Error    Sin      Pedir    Stock
                                       existencias más     suficiente

Ejemplos:
R1: -5 unidades - Error, valor no válido.
R2: 0 unidades - No hay stock disponible.
R3: 5 unidades - Se recomienda pedir al menos 10 unidades más.
R4: 20 unidades - Hay suficientes unidades disponibles.

Interpretación:
- ROJO: Existe un error o no hay existencias.
- AMARILLO: Se recomienda solicitar más productos.
- VERDE: Hay suficientes productos disponibles.

============================================================
5. ALGORITMO: VALIDAR REGISTRO
------------------------------------------------------------

Objetivo:
Determinar si una persona puede registrarse teniendo en cuenta su edad y la aceptación de los términos y condiciones.

CONDICIONES:
C1: ¿La persona tiene 14 años o más?
C2: ¿La persona acepta los términos y condiciones?

TABLA DE DECISIÓN:

Regla                         R1       R2       R3       R4
------------------------------------------------------------
C1: Edad >= 14                SI       SI       NO       NO
C2: Acepta términos           SI       NO       SI       NO
------------------------------------------------------------
Acción                        Registro No puede No puede No puede
                              exitoso  registrarse registrarse registrarse

Ejemplos:
R1: 20 años y acepta los términos - Registro exitoso.
R2: 20 años y no acepta los términos - No puede registrarse.
R3: 12 años y acepta los términos - No puede registrarse.
R4: 12 años y no acepta los términos - No puede registrarse.

Lógica:
Para registrarse, la persona debe tener al menos 14 años y aceptar los términos y condiciones.

============================================================
OBSERVACIONES GENERALES
------------------------------------------------------------

1. El operador MOD permite obtener el residuo de una división y determinar si un número es divisible exactamente por otro.

2. Los operadores lógicos utilizados son:
   - Y: Ambas condiciones deben cumplirse.
   - O: Al menos una condición debe cumplirse.
   - <>: Significa diferente de.

3. Es importante validar los datos ingresados por el usuario para evitar resultados incorrectos.

4. Las tablas de decisión permiten organizar las condiciones y visualizar los diferentes resultados posibles antes de desarrollar un algoritmo.

