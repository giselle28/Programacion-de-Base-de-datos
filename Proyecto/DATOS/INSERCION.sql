insert into Servicios (descripcion, precio) values  ('Poda de arboles' ,  500) , ('Instalacion metro cuadrado de cesped', 200 ) , ('Poda de palmeras', 1000) ,
('Mantenimiento cesped metro cuadrado',150) , ('Servicio petunias metro cuadrado' , 250) , ('Servicios flores variadas metro cuadrado', 200) , ('Servicio ficus unidad' , 1500),
('Servicio palma unidad', 900)


insert into Clientes_Servicios (id_Clientes,id_Servicios) values (1,1),(2,2),(1,2),(9,6),(3,6),(4,2),(500,2),(345,6),(234,6),
(234,5),(321,3),(12,3),(234,4),(234,2),(234,7),(234,8),(234,1),(25,7),(54,2),(54,5),(14,6),(43,7),(34,5),(36,7)

insert into Proveedores (nombre,telefono,email) values ('Mario Benitez','6643789750','mariobntz@gmail.com'),('Ignacio Lopez','6640938695','ignacilo@gmail.com'),
('Olga Teñon','6648473028','olgat@gmail.com'),('Regina Covarruvias','6647852195','regina@gmail.com'),('Edson Guitierrez','6645321113','edguitierrez@gmail.com'),
('Ramon Perez','6643256709','rammonperez@gmail.com')

select*from Proveedores


insert into Productos(nombre,descripcion,precio)values('Arbol ficus','','500'),('Tijeras para apodar','artefacto para apodar las plantas','650'),
('Mangera','mangera reforzadas 3 capas, conexiones plásticas,1/2, 20 m','230'),('palmera','Las arecáceas son una familia de plantas monocotiledóneas, la única familia del orden Arecales','400')


insert into Productos_Proveedores (id_Productos,id_Proveedor) values (1,2),(2,3),(3,2),(3,4)
select*from Productos_Proveedores
select * from tabla_clientes