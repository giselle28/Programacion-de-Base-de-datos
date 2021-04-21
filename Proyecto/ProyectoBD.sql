create database	ProyectoBD1
use ProyectoBD1
use master
drop database ProyectoBD1


create table Clientes
(
id int identity primary key,
nombre varchar(50),
telefono varchar(14),
correoE varchar(50),
Direccion varchar(50)
)


create table Redes
(
id int identity primary key,
facebook varchar(20),
instagram varchar(20),
whatsapp int,
twitter varchar(20),
youtube varchar(20),
)

create table Servicios
(
id int identity primary key,
tiposervicio varchar(30)
)

create table Productos
(
id int identity primary key,
marca varchar(30),
precio decimal
)

create table Proveedor
(
  id int identity primary key,
  nombre varchar(30)
)



create table Clientes_Redes
(
  id_Clientes int foreign key references Clientes(id), 
  id_Redes int foreign key references Redes (id),
  primary key (id_Clientes,id_Redes)
)

 create table Clientes_Servicios
(
  primary key (id_Clientes,id_Servicios),
  id_Clientes int foreign key references Clientes(id), 
  id_Servicios int foreign key references Servicios (id)
 )

 create table Servicios_Productos
(
  primary key (id_Servicios,id_Productos),
  id_Servicios int foreign key references Servicios(id), 
  id_Productos int foreign key references Productos (id)
 )

  create table Productos_Proveedor
(
  primary key (id_Productos,id_Proveedor),
  id_Productos int foreign key references Productos(id), 
  id_Proveedor int foreign key references Proveedor (id)
 )


 CREATE VIEW VWClientes_telefono
 AS SELECT id, nombre, telefono
 FROM Clientes
 WHERE telefono = 5654007018;

 CREATE PROCEDURE VWSelectAllCustomers @Direccion varchar(50)
AS
SELECT * FROM Clientes WHERE Direccion  = @Direccion 
GO

 CREATE PROCEDURE PrecioProducto @precio decimal
AS
SELECT * FROM Productos WHERE precio  = @precio
GO

exec VWSelectAllCustomers @Direccion = '5 Cottonwood Park'
exec PrecioProducto @precio = 67
select*from VWClientes_telefono

select*from Productos_Proveedor