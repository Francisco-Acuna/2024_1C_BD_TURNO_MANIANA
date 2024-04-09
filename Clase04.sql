-- Clase 4

-- -----------------------------
-- Ejercicio 1
-- -----------------------------


-- Crear la tabla facturas dentro de la base de datos cursomysql
-- con el siguiente detalle:

/*
campo	tipo de dato
letra	char (PK)
numero	int (PK)
fecha	date
monto	double
*/

-- PK significa Primary Key
-- en este caso la PK es compuesta, es decir que está formada por 
-- más de un campo (letra, numero)
-- cada uno por si solo no es clave, ni tampoco identifica al registro
-- pero la suma de los dos, forman la clave

-- crear la tabla articulos dentro de la base de datos cursomysql
-- con el siguiente detalle:
/*
campo	tipo de dato
codigo	int (PK)
nombre	varchar(50)
precio	double
stock	int
*/

show databases;
use cursomysql;
show tables;

create table facturas(
	letra char(1),
    numero int,
    fecha date not null,
    monto double not null,
    primary key(letra,numero)
);

show tables;

create table articulos(
	codigo int primary key,
    nombre varchar(50) not null,
    precio double not null,
    stock int not null
);

select * from clientes;
select * from facturas;
select * from articulos;


-- -------------------------------
-- Ingresar registros a una tabla
-- -------------------------------

-- Insertamos registros a la tabla clientes:
-- con las comillas simples se almacena texto (ANSI)
-- con comillas dobles es lo mismo, pero no es ANSI, es decir que
-- solo funciona en MySQL
insert into clientes (nombre, apellido, cuit, direccion) values
('Matías', 'Fernandez', '20448056295', 'Pedernera 3661');
insert into clientes (nombre, apellido, cuit, direccion) values
('Zoe', 'Perez', '20123456789', 'Av. Rivadavia 3250');
insert into clientes (nombre, apellido, cuit, direccion) values
('Carlos', 'Gonzalez', '22394518104', 'Av. San Juan 3800');
insert into clientes (nombre, apellido, cuit, direccion) values
('Francisco', 'El Grandioso', '20353652369', 'Medrano 162');
insert into clientes (nombre, apellido, cuit, direccion) values
('Esteban', 'Quito', '22334445556', null);
insert into clientes (nombre, apellido, cuit) values
('Pablo', 'Mármol', '11111110001');
insert into clientes (nombre, cuit, direccion) values
('María', '32659874562', 'Los Incas 23546312135');
select * from clientes;
drop table clientes;





