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


 /*create table prueba
(
d_codigo int,
d_asenta nvarchar(50),
d_tipo_asenta varchar(50),
D_mnpio nvarchar(50),
d_estado nvarchar(50),
d_ciudad nvarchar(50),
d_CP int,
c_estado int,
c_oficina int,
c_CP nvarchar(1),
c_tipo_asenta int,
c_mnpio int,
id_asenta_cpcons nvarchar(50),
d_zona nvarchar(50),
c_cve_ciudad nvarchar(50)
)
*/
select*from prueba_ where d_asenta='Tijuana'
select*from Padron_S072_Edo_01
alter table Padron_S072_Edo_01 drop column BIMESTRE
alter table Padron_S072_Edo_01 drop column CVE_MUN