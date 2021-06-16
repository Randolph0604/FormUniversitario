CREATE DATABASE formulariouniversitario
DROP DATABASE formulariouniversitario
USE formulariouniversitario

--- Tabla Carrera---
CREATE TABLE Carrera (
IdCarrera int identity(1,1) NOT NULL,
Descripcion varchar(50) DEFAULT NULL,
Duracion_Anio int DEFAULT NULL,
Cantidad_Semestre int DEFAULT NULL,
Estado varchar(20) DEFAULT NULL,
CONSTRAINT PK_IDCA PRIMARY KEY (IdCarrera),
);

--- Tabla Estudiante---
CREATE TABLE Estudiante (
IdEstudiante int identity(1,1) NOT NULL,
Matricula varchar(50) NOT NULL,
Nombre varchar(50) DEFAULT NULL,
Primer_Apellido varchar(50) DEFAULT NULL,
Segundo_Apellido varchar(50) DEFAULT NULL,
CodigoCarrera int DEFAULT NULL,
Estado varchar(20) DEFAULT NULL,
CONSTRAINT PK_IDES PRIMARY KEY (IdEstudiante),
CONSTRAINT FK_IDCOCA FOREIGN KEY (CodigoCarrera) REFERENCES Carrera(IdCarrera),
);

