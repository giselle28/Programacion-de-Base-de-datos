create database	ProyectoBD
use ProyectoBD
use master
drop database ProyectoBD


create table Clientes
(
id int identity primary key,
nombre varchar(50),
teléfono varchar(14),
correoE varchar(30),
Direccion varchar(50)
)

select*from Clientes

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
tipo varchar(20),
marca varchar(30),
precio decimal
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



