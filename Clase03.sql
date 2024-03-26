-- Clase03

-- ---------------------------------------
-- Cómo crear una base de datos
-- ---------------------------------------

show databases; -- muestra las bases de datos del sistema (servidor)
-- el ; es el terminador de instrucciones

SHOW DATABASES; -- puedo escribir las instrucciones en mayúscula o minúscula
-- el lenguaje es NO CASE SENSITIVE

drop database if exists cursomysql;
-- elimina la base de datos si es que existe

-- drop database cursomysql;
-- da error si la base de datos no existe

create database cursomysql;
-- con el comando create, creo una base de datos

create database if not exists cursomysql;
-- crea la base de datos si es que no existe

show databases;

-- los objetos creados en Windows no diferencias mayúsculas de minúsculas
-- pero los objetos creados en Linux o Unix son CASE SENSITIVE, es decir,
-- create database administracion;
-- create database ADMINISTRACION;
-- bajo Windows estamos creando la misma base de datos
-- pero en Linux serían 2 bases de datos distintas.

use cursomysql;
-- con este comando entramos a la base de datos
-- es muy importante ejecutarlo antes de comenzar a realizar modificaciones

show tables;
-- muestra las tablas que tiene la base de datos


-- ---------------------------------------
-- Cómo crear una tabla en MySQL
-- ---------------------------------------

-- creamos la tabla clientes
create table clientes(
codigo int auto_increment,
nombre varchar(25) not null,
apellido varchar(25) not null,
cuit char(11) not null,
direccion varchar(50),
primary key (codigo)
); 
-- esta instrucción tiene varias líneas, pero sabemos que termina en el ;
-- el comando create crea una tabla en este caso (es una estructura)
-- los campos son las columnas que tendrá y se separan con ',' una de otra
-- primary key() declara que un campo es clave primaria
-- el campo clave primaria identifica el registro como único
-- no puede tener valores repetidos.
-- La cláusula auto_increment permite que el contenido del campo sea
-- incrementado automáticamente en forma autonumerada.
-- Esta cláusula es sólo aplicable a la primary key
-- La cáusula NOT NULL indica que ese campo es de ingreso obligatorio
-- no puede ser omitido.

show tables;
-- comprobar la existencia de la tabla

