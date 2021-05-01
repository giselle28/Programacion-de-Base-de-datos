CREATE DATABASE ProyectoBaseDatos
use ProyectoBaseDatos

-- Insertamos datos de los csv tabla clientes
select*from tabla_clientes

alter table tabla_clientes
add Id int primary key identity (1,1)

-/*ELIMINANDO ID CLIENTES
ALTER TABLE tabla_clientes
DROP COLUMN Id*/-
--Agregamos campo de redes sociales
alter table tabla_clientes
add  Red_Social varchar(35)




insert into tabla_clientes (Apellido_Paterno,Apellido_Materno,Nombre_s,Telefono,Correo) values ('ALVAREZ','YANEZ','JOSE ALONSO','6645484871','JOSE.ALVAREZ@TECTIJUANA.EDU.MX')


-- Insertamos datos de los csv tabla direcciones

select*from tabla_direccion

alter table tabla_direccion
add Id int primary key identity (1,1)

-/*ALTER TABLE tabla_direccion
DROP COLUMN Id*/-
--Agregamos llave foranea de tabla_direcciones
alter table tabla_direccion
add CONSTRAINT fk_Id FOREIGN KEY (Id) REFERENCES tabla_clientes (Id) 

INSERT INTO tabla_direccion (Calle_y_Numero,Colonia,Municipio_Ciudad,Estado,CP) values ('Padre Kino 94','La Gloria','Tijuana','Baja California',22675)


-- Creamos la tabla Productos

CREATE TABLE Productos 
(
 Id int primary key identity (1,1),
 nombre varchar (30),
 descripcion varchar(MAX),
 precio decimal
)

--Creamos la tabla Proveedores

CREATE TABLE Proveedores
(
 Id int primary key identity (1,1),
 nombre varchar(35),
 telefono varchar(13),
 email varchar(40)
)

--Relacion Muchos a muchos de proveedores y productos

  create table Productos_Proveedores
(
  primary key (id_Productos,id_Proveedor),
  id_Productos int foreign key references Productos(id), 
  id_Proveedor int foreign key references Proveedores (id)
)

 -- Creamos la tabla servicios
 create table Servicios
(
id int identity primary key,
descripcion varchar(MAX),
precio int 
)

--Relacion de muchos a muchos de servicios y productos
 create table Servicios_Productos
(
  primary key (id_Servicios,id_Productos),
  id_Servicios int foreign key references Servicios(id), 
  id_Productos int foreign key references Productos (id)
)

--Relacion de muchos a muchos de clientes y servicios

 create table Clientes_Servicios
(
  primary key (id_Clientes,id_Servicios),
  id_Clientes int foreign key references tabla_clientes(id), 
  id_Servicios int foreign key references Servicios (id)
)


--Vistas
 CREATE VIEW VWClientesDireccion
 AS SELECT Apellido_Paterno, Nombre_s, telefono , Calle_y_Numero , Municipio_Ciudad , Estado
 FROM tabla_clientes as E
 JOIN tabla_direccion as P 
 on E.Id = P.Id
 Go

 select*from VWClientesDireccion


 --procedimiento 
CREATE PROCEDURE ALTA_CLIENTE
AS
SELECT*FROM tabla_clientes


EXEC ALTA_CLIENTE


select*from tabla_direccion

----CURSORES

--Declaramos variables
DECLARE @nombre varchar(15) , @apellidoP varchar(15)
--Declaramos el Cursor
DECLARE CursorEJ CURSOR FOR
SELECT Apellido_Paterno , Nombre_s FROM tabla_clientes WHERE Apellido_Paterno = 'AGUIRRE' -- Consulta de los Datos

OPEN CursorEj -- Abrimos el Cursor

FETCH NEXT FROM CursorEj INTO @nombre, @apellidoP -- Leer la primera fila
WHILE @@FETCH_STATUS = 0 BEGIN 
PRINT @nombre + ' ' + @apellidoP -- Ejecutamos las operaciones
FETCH NEXT FROM CursorEj INTO @nombre, @apellidoP -- Leer la fila siguiente

END --Fin del while

CLOSE CursorEj
DEALLOCATE CursorEj

----------IF---------------------
declare @course_id int=4

if(@course_id = 4)
select*from tabla_direccion where Id = 4
else
select*from tabla_direccion where Id != 4

--------TRY CATCH
DECLARE @i int  
BEGIN  
BEGIN TRY  
SET @i = 2  
SET @i = @i / 0  
END TRY  
BEGIN CATCH  
SELECT ERROR_NUMBER() AS ErrorNumber  
    , ERROR_MESSAGE() AS ErrorMessage  
    , ERROR_LINE() AS ErrorLine;END CATCH  
END;

-------TRANSACTION
BEGIN TRAN
UPDATE tabla_clientes
SET    Apellido_Materno = 'FRANCIS', 
        Nombre_s = 'ALONSO'  WHERE Id=2
SELECT * FROM tabla_clientes WHERE Id=2
ROLLBACK TRAN 
SELECT * FROM tabla_clientes WHERE Id=2

-------------------FUNCIONES---------------------------------------------
--a) funcion que muestra solamente el numero del mes
SELECT  MONTH(GETDATE())  as Num_Mes
--b) funcion que convierta GetDate() a tipo de dato string
SELECT CAST(GETDATE()as VARCHAR(12))  as string_fecha
--c) funcion que cuente el numero de caracteres del resultado del enciso b) 
SELECT LEN(CAST(GETDATE()as VARCHAR(12)))  as conta_carac
--d) funcion que concatene el resultado obtenido de enciso C) con la leyenda " caracteres contiene"
SELECT CONCAT(LEN(CAST(GETDATE() as VARCHAR(12))),' caracteres contiene')  as conta_carac