create database	ProyectoBD
use ProyectoBD

create table Clientes
(
id_cliente int identity primary key,
nombre varchar(30),
apellido varchar(40),
teléfono int,
correoE varchar(30)
)

create table Direccion
(
id_dir int identity primary key,
calle varchar(20),
numexte int,
cp int,
municipio varchar(20),
estado varchar(20)
)

create table Redes
(
id_redes int identity primary key,
facebook varchar(20),
instagram varchar(20),
whatsapp int,
twitter varchar(20),
youtube varchar(20),
)

create table tiposervicio
(
id_tiposervicio int identity primary key,
tiposervicio varchar(30)
)
create table productos
(
idproducto int identity primary key,
marca varchar(30)
)


