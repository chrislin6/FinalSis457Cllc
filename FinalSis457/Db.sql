CREATE DATABASE FinalSis457Cllc;
USE [master]
GO
CREATE LOGIN [usrfinal] WITH PASSWORD=N'12345678', 
   DEFAULT_DATABASE=[FinalSis457Cllc], 
   CHECK_EXPIRATION=OFF, 
   CHECK_POLICY=ON
GO
USE [FinalSis457Cllc]
GO
CREATE USER [usrfinal] FOR LOGIN [usrfinal]
GO
USE [FinalSis457Cllc]
GO
ALTER ROLE [db_owner] ADD MEMBER [usrfinal]
GO
DROP TABLE IF EXISTS Serie;

CREATE TABLE Serie (
  id INT IDENTITY(1, 1) PRIMARY KEY,
  titulo VARCHAR(250) NOT NULL,
  sinopsis VARCHAR(5000) NOT NULL,
  director VARCHAR(100) NOT NULL,
  duracion INT NOT NULL,
  fechaEstreno DATE NOT NULL,
  registroActivo BIT NULL
);

DROP TABLE IF EXISTS Usuario;

CREATE TABLE Usuario (
    id INT IDENTITY (1, 1) NOT NULL,
    usuario VARCHAR (12)  NOT NULL,
    clave VARCHAR (250) NOT NULL,
    rol VARCHAR (100) NOT NULL,
    registroActivo  BIT NULL
);



//PARA LA INSERCION DE DATOS
INSERT INTO Usuario 
VALUES ('linda', 'i0hcoO/nssY6WOs9pOp5Xw==', 'Administrador', 'True')


INSERT INTO Serie 
VALUES ('Harry Potter', 'Magia', 'Chris Columbus', '60', '10/01/06', 'True')

INSERT INTO Serie 
VALUES ('Peter Pan', 'Infantil', 'Wilfred Jackson', '45', '11/10/03', 'True')

INSERT INTO Serie
VALUES ('La Bella y la Bestia', 'Infantil', 'Bill Condon', '75', '05/08/20', 'True')

INSERT INTO Serie
VALUES ('Spiderman', 'Accion', 'Sam Raimi', '80', '03/09/13', 'True')