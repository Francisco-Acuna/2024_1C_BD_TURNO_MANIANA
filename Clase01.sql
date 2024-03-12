-- -----------------------------------------------
-- CURSO BASE DE DATOS CON MySQL
-- TRAYECTO PROGRAMADOR
-- -----------------------------------------------

-- comentarios en línea
-- es necesario dejar un espacio después de los -- 

/*
bloque
de 
comentarios
*/

-- ANSI SQL El ANSI es un estándar del lenguaje. Funciona en todas las bases de datos relaciones

# es otro tipo de comentario, pero no es ANSI. (solo funciona en MySQL)

-- SQL -> Structure Query Language (Lenguaje de Consulta Estructurada)

/*
DDL: Data Definition Language (Lenguaje de Definición de Datos)
- create
- alter
- drop
*/

/*
DML: Data Manipulation Language (Lenguaje de Manipulación de Datos)
- select
- insert
- delete
- update
*/

-- ---------------------------------------------
-- TIPOS DE DATOS MÁS COMUNES EN MYSQL
-- ---------------------------------------------

/*
Tipos de datos de texto más utilizados:

CHAR -> este tipo de dato lo utilizamos cuando sabemos de antemano, 
cuántos caracteres se guardarán.
Si declaramos un tipo de dato CHAR de 20 posiciones, siempre va a utilizar 20 bytes 
para guardar el dato.
Ejemplo: nombre CHAR(20)
|--------------------| -> 20 bytes
|ana-----------------| -> 20 bytes
|carlos--------------| -> 20 bytes
|maximiliano---------| -> 20 bytes

VARCHAR -> este tipo de dato lo utilizamos cuando no sabemos la longitud del dato que se ingresará
Ejemplo: nombre VARCHAR(20)
|--------------------| -> 20 bytes
|ana-----------------| -> 3 + 1 bytes (son 3 caracteres para el nombre + 1 caracter de aviso de longitud)
|carlos--------------| -> 6 + 1 bytes
|maximiliano---------| -> 11 + 1 bytes
*/

/*
Tipos de datos numéricos

BIT o BOOL 
es un entero que representa un valor de verdad.
Sirve para guardar valores lógicos. El 0 representa el valor falso
y cualquier otro número distinto de cero representa el valor verdad.

TINYINT
almacena un entero de 1 byte
|--------|--------|
-128	 0		127

TINYINT UNSIGNED
|--------|--------|
0				  255

SMALLINT
|--------|--------|
-32.768	 0		 32.767

SMALLINT UNSIGNED
|--------|--------|
0				65.535

INT 
|--------|--------|
-2.147.483.648    2.147.483.647

INT UNSIGNED
|--------|--------|
0				4.294.967.295	
*/





