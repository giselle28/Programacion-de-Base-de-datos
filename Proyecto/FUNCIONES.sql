-------------------FUNCIONES---------------------------------------------

use ProyectoBaseDatos

--a) funcion que muestra solamente el numero del mes
SELECT  MONTH(GETDATE())  as Num_Mes
--b) funcion que convierta GetDate() a tipo de dato string
SELECT CAST(GETDATE()as VARCHAR(12))  as string_fecha
--c) funcion que cuente el numero de caracteres del resultado del enciso b) 
SELECT LEN(CAST(GETDATE()as VARCHAR(12)))  as conta_carac
--d) funcion que concatene el resultado obtenido de enciso C) con la leyenda " caracteres contiene"
SELECT CONCAT(LEN(CAST(GETDATE() as VARCHAR(12))),' caracteres contiene')  as conta_carac



CREATE FUNCTION BuscarNombreClte (@nombre varchar(15))


--funciones de usuario programación en base de datos en sql server
CREATE FUNCTION BuscarNombreClte (@nombre varchar(15))

RETURNS  TABLE
AS
RETURN
( 
  select telefono, Apellido_Paterno, Apellido_Materno from tabla_clientes where Nombre_s = @nombre
);
GO



select*from  BuscarNombreclte ('JOSE')

create function BUSCARPRECIO (@precio int)

 returns table
 as
 return (
  select id, descripcion, precio
  from tabla_servicios
  where precio < @precio
 );

select*from  BUSCARBUSCARPRECIO ('350')

create function BRHISTORIALCTEELIMINADO (@id int)

 returns table
 as
 return (
  select id,accion, usuario, fecha
  from tabla_HistorialClteEliminado
  where id = @id
 );

select*from BRHISTORIALCTEELIMINADO ('5')

