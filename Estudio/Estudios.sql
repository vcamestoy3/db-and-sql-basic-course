-- Create database and tables, use the databes, insert new register, select *

CREATE DATABASE TEST CHARSET utf8;

SHOW DATABASES;

USE TEST;

CREATE TABLE Prueba(
					ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
                    Nombre VARCHAR (60) NOT NULL,
                    DNI VARCHAR (9) NOT NULL,
                    UNIQUE KEY (DNI),
                    PRIMARY KEY (ID)
);

SHOW TABLES;

INSERT INTO Prueba (Nombre, DNI) VALUES ('Alejandra','98765432');

INSERT INTO Prueba (Nombre, DNI) VALUES 
('Sandra','201364879'),
('Carlos','15935728'),
('Manolo','809371467');

INSERT INTO Prueba (Nombre, DNI) VALUES ('Raul','22379641');

SELECT Nombre FROM Prueba;

CREATE TABLE Facturas(
					tipo ENUM('A','B','C') NOT NULL DEFAULT 'A',
					Numero INT UNSIGNED NOT NULL,
					PRIMARY KEY (tipo, Numero)
);

INSERT INTO Facturas (tipo, Numero) VALUES ('A','1');
INSERT INTO Facturas (tipo, Numero) VALUES ('B','1');
INSERT INTO Facturas (tipo, Numero) VALUES ('C','1');

SELECT * FROM Facturas;

CREATE TABLE Clientes (
						ID INT NOT NULL AUTO_INCREMENT,
                        Nombre VARCHAR(15),
                        Apellido VARCHAR(15),
                        Edad INT UNSIGNED,
                        PRIMARY KEY (ID)                        
);

INSERT INTO Clientes (Nombre, Apellido, Edad) VALUES ('Xavier','Wuon','40');

INSERT INTO Clientes SET
Nombre='Gabriel',
Apellido='Mendoza',
Edad='25';

INSERT INTO Clientes (Nombre, Apellido, Edad) VALUES 
('Luis','Cuotto','29'),
('Zara','Castillo','15'),
('Irina','García','33'),
('Diana','Markle','22');

SELECT * FROM Clientes;


