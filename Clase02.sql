-- ------------------------------------------
-- Curso de Base de Datos con MySQL
-- Trayecto Programador
-- Docente: Francisco Acuña 
-- Centro 8 SMATA
-- Cursada martes de 10 a 14hs.
-- ------------------------------------------

-- comentarios en línea
-- es necesario un espacio después de los --

/*
bloque de comentarios
se puede escribir
en varias líneas
*/

# comentario no ANSI. Sólo funciona en MySQL

-- ANSI SQL es un estándar del lenguaje
-- funciona en la mayoría de bases de datos relacionales

-- SQL Structure Query Language (Lenguaje de Consulta Estructurada)

/*
DDL -> Data Definition Language (Lenguaje de Definición de Datos)
- CREATE
- ALTER
- DROP
*/

/*
DML -> Data Manipulation Language (Lenguage de Manipulación de Datos)
- SELECT
- INSERT
- DELETE
- UPDATE
*/

-- ------------------------------------------
-- Tipos de datos más comunes en MySQL
-- ------------------------------------------

/*
Tipos de datos de texto más utilizados.

CHAR -> este tipo de dato lo utilizamos cuando sabemos de antemano cuántos caracteres se guardarán
Por ejemplo, si declaramos un tipo de dato CHAR de 20 posiciones:
nombre CHAR(20)
siempre va a estar utilizando 20 bytes para guardar el dato
|--------------------| -> 20 bytes
|ana-----------------| -> 20 bytes
|carlos--------------| -> 20 bytes
|maximiliano---------| -> 20 bytes

VARCHAR -> este tipo de datos lo utilizamos cuando no sabemos de antemano la longitud del dato 
que se ingresará.
Ej. tipo de dato VARCHAR de 20 posiciones:
nombre VARCHAR(20)
|--------------------| -> 20 bytes
|ana-----------------| -> 3 + 1 bytes (3 caracteres para el nombre + 1 caracter de aviso de longitud)
|carlos--------------| -> 6 + 1 bytes
|maximiliano---------| -> 11 + 1 bytes

*/

/*
Tipos de datos numéricos

BIT o BOOL almacena un entero que representa un valor de verdad.
Sirve para guardar valores lógicos. El 0 representa el valor falso y cualquier otro número
distinto de 0 representa el valor de verdad

TINYINT almacena un entero de 1 byte
|--------|--------|
-128     0       127

TINYINT unsigned
|----------------|
0               255

SMALLINT (signed)
|--------|--------|
-32.768  0       32.767

SMALLINT (unsigned)
|----------------|
0               65.535

INT (signed) 32 bits
|--------|--------|
-2.147.483.648   2.147.483.647

INT (unsigned)
|----------------|
0           4.294.967.295

BIGINT es el valor más grande (64 bits)

FLOAT (son decimales de 32 bits)
almacena hasta 8 dígitos
por ejemplo, si quisiera hacer 10/3
el resultado sería 3.333333 (el . cuenta como un dígito más)
si hiciera 100/3, 
el resultado sería 33.33333 (se desplazó el punto, por eso decimos que es punto flotante)
se achica la precisión decimal.

DOUBLE (son decimales de 64 bits)
almacena 17 dígitos (aunque puede variar)
por ejemplo si hiciera 10/3
el resultado sería 3.333333333333333
o si hiciera 100/3
el resultado sería 33.33333333333333

DECIMAL
representa números decimales de precisión fija, es una precisión exacta.
La estructura es 
DECIMAL(n,m)
donde n es la cantidad de dígitos que tendrá el número en total
y m es la cantidad de dígitos que se utilizarán para representar los decimales
ejemplo,
DECIMAL(10,2)
XXXXXXXX.XX (el punto no se considera un dígito en este caso)
el mayor número que puedo representar es
99999999.99
ocupa en MySQL la precisión + 2 como cantidad de bytes
siguiendo el ejemplo anterior:
10 + 2 = 12 bytes
*/

/*
Tipos de datos de fecha y hora

DATE 
ocupa 3 bytes y almacena una fecha (por defecto es YYYY,MM,DD)
por ejemplo '2024-03-19'

DATETIME
ocupa 8 bytes y guarda la fecha y la hora
el formato es (YYYY-MM-DD HH:MM:SS)

TIME
ocupa 3 bytes y guarda la hora
el formato es (HH:MM:SS)
*/

-- ---------------------------------------
-- COMANDO SELECT
-- ---------------------------------------

-- el comando select nos sirve para traer registros de una tabla
-- pero también lo podemos utilizar para imprimir mensajes en la consola
-- como por ejemplo
select 'Hola Mundo!';
-- para ejecutar, sobre la línea que queremos ejecutar, presionamos ctrl + enter
-- puedo pedir cálculos matemáticos:
select 2 + 2 ;
-- la salida es el resultado de la operación
-- se puede agregar un alias a las consultas select
-- un alias es un nombre de campo
select 2 * 2 as 'Multiplicacion';
-- el as ya no es de uso obligatorio, al igual que el uso de las comillas
select 2 * 2 Multiplicacion;
-- es importante que no pongamos espacios en los nombres de alias si los ponemos sin comillas
-- si queremos escribir sin comillas, el tema de los espacios lo resolvemos con snake_case
select 2 * 2 resultado_de_multiplicacion;
















