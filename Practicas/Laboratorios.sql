-- ----------------------------------------------
-- LABORATORIO CLASE 1
-- ---------------------------------------------
DROP DATABASE IF EXISTS laboratorio;

CREATE DATABASE laboratorio;
USE laboratorio;

CREATE TABLE Facturas (
						Letra CHAR,
                        Número INTEGER,
                        ClienteID INT,
                        ArtículoID INT,
                        Fecha DATE,
                        Monto DOUBLE,
						PRIMARY KEY (Letra, Número)
)CHARSET utf8;

DESCRIBE Facturas;

INSERT INTO Facturas VALUES 
('A','1','1','1','2021/01/18','500'),
('A','2','2','2','2021/01/18','2500'),
('A','3','3','3','2021/02/25','320'),
('A','4','4','4','2021/02/25','120'),
('A','5','5','5',curdate(),'300');

SELECT * FROM Facturas;

CREATE TABLE Artículo (
					ArtículoID INT,
					Nombre VARCHAR (50),
                    Precio DOUBLE,
                    Stock INTEGER,
                    PRIMARY KEY (ArtículoID)
) CHARSET utf8;

INSERT INTO Artículo (ArtículoID, Nombre, Precio, Stock) VALUES ('1','Destornillador','25','50');
INSERT INTO Artículo (ArtículoID, Nombre, Precio, Stock) VALUES ('2','Pinza','35','22');
INSERT INTO Artículo (ArtículoID, Nombre, Precio, Stock) VALUES ('3','Martillo','15','28');
INSERT INTO Artículo (ArtículoID, Nombre, Precio, Stock) VALUES ('4','Maza','35','18');
INSERT INTO Artículo (ArtículoID, Nombre, Precio, Stock) VALUES ('5','Balde','55','13');


CREATE TABLE Clientes (
					ClienteID INT,
					Nombre VARCHAR (50),
                    Apellido VARCHAR (50),
                    Cuit CHAR (16),
                    Dirección VARCHAR (50),
                    Comentarios VARCHAR (50),
                    PRIMARY KEY (ClienteID)
)CHARSET utf8mb4;

INSERT INTO Clientes (ClienteID, Nombre, Apellido, Cuit, Dirección, Comentarios) VALUES
('11','Agustin','Diaz','20-35987452-0','Lima 458',NULL),
('12','Angela','Lopez','20-37987854-0','Peru 32','Usuario frecuente'),
('13','Cristian','Fraga','20-36887498-0','Chile 6985','Paga con crédito'),
('14','Sol','Cabral','20-25982495-0','Lavalle 1201',NULL),
('15','Ezequiel','Perez','20-21987111-0','Uruguay 25',NULL);

SELECT * FROM Clientes;

SHOW TABLES;

CREATE TABLE Agenda (
					Contacto INTEGER,
                    Nombre VARCHAR (20),
                    Domicilio INT,
                    Teléfono VARCHAR (9),
                    PRIMARY KEY (contacto)
) CHARSET UTF8;

DESCRIBE Agenda;

INSERT INTO Agenda SET
Contacto='1',
Nombre='Mulan Fa',
Domicilio='48',
Teléfono='448541236';

INSERT INTO Agenda SET
Contacto='6',
Nombre='Ariel Blooms',
Domicilio='56',
Teléfono=Null;

INSERT INTO Agenda SET
Contacto='12',
Nombre='Aurora Shoe',
Domicilio='610',
Teléfono='+75961048';

SELECT * FROM Agenda;
DROP TABLE AGENDA;
