CREATE DATABASE PreLab;
Use PreLab;

CREATE TABLE DIRECCIONs (
	id_dirección INT PRIMARY KEY,
    direccion VARCHAR(45),
    ciudad VARCHAR (45),
    pais VARCHAR (45)
); 

CREATE TABLE CLIENTEs (
	Iden_Cliente INT PRIMARY KEY,
    Nombre VARCHAR (45),
    Apellido VARCHAR (45),
    Edad VARCHAR(45),
    Direccion_idDireccion int(45)
 );
 
  create table RENTAs(
	idRenta INT PRIMARY KEY,
    Fecha_De_Renta DATE,
    Fecha_De_Entrega Date,
    idCopiasPeliculas int(11),
	IdCliente int(11)
 );
 
  create table INVENTARIOs1(
	idCopiasPeliculas INT PRIMARY KEY,
    idPeliculas INT(45),
    Disponible int(40)
 );
 
  create table PELICULAs(
 idPeliculas INT PRIMARY KEY,
 Nombre VARCHAR(45),
 Duracion INT(11),
 Descripcion VARCHAR(45),
 Año Int (45),
 idCategoria Int(11)
 );
 
  create table CATEGORIAs(
 idCategoria INT PRIMARY KEY,
 Nombre VARCHAR(45)
 );
 
 
 INSERT INTO DIRECCIONs VALUES
 (10,'Zona1 Capitalina2','VillaNueva','Guatemala'),
 (11,'Zona1 Capitalina','VillaNueva','Guatemala'),
 (12,'Zona1 Capitalina','VillaNueva','Guatemala'),
 (13,'Zona1 Capitalina','VillaNueva','Guatemala'),
 (14,'Zona1 Capitalina','VillaNueva','Guatemala');
 
   INSERT INTO CLIENTEs VALUES
  (60, 'Josue','Castellanos','17','Mixco'),
  (83, 'Josue','Castellanos','17','Mixco'),
  (56, 'Josue','Castellanos','17','Mixco'),
  (67, 'Josue','Castellanos','17','Mixco'),
  (98, 'Josue','Castellanos','17','Mixco');
  
   INSERT INTO RENTAs VALUES
  (23,'2002-12-09','2002-04-12','1239','43'),
  (40,'2002-12-09','2002-04-12','1239','43'),
  (32,'2002-12-09','2002-04-12','1239','43'),
  (76,'2002-12-09','2002-04-12','1239','43'),
  (81,'2002-12-09','2002-04-12','1239','43');
  
INSERT INTO INVENTARIOs1 VALUES
 (18,'32','Disponible'),
 (34,'93','Disponible'),
 (29,'53','Disponible'); 
 
  INSERT INTO PELICULAs VALUES
 (15,'Mario Bros','1:30 horas','Una pelicula adaptada del juego','2002','Comedia'),
 (123,'Mario Bros','1:30 horas','Una pelicula adaptada del juegoo','2002','Comedia'),
 (315,'Mario Bros','1:30 horas','Una pelicula adaptada del juego','2002','Comedia'),
 (345,'Mario Bros','1:30 horas','Una pelicula adaptada del juego','2002','Comedia'),
 (215,'Mario Bros','1:30 horas','Una pelicula adaptada del juego','2002','Comedia');
 
  INSERT INTO CATEGORIAs VALUES
 (1734, 'Terror'),
 (1434, 'Comedia'),
 (2734, 'Tragicomedia'),
 (32873,'MineCraft'),
 (283728,'Misterio');
 
  select * from DIRECCIONs;
 select * from CLIENTEs;
 select * from RENTAs;
 select * from INVENTARIOs;
 select * from PELICULAs;
 select * from CATEGORIAs;
 
 delete from PreLab1
 where nombre = POKEMON;
  
  