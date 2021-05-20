-- ----------------------------------------------
-- LABORATORIO CLASE SQL
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

INSERT INTO Facturas (Letra, Número, ClienteID, ArtículoID, Fecha, Monto) VALUES
('B', 1, 1, 1, '2011/11/18', 5000),
('B', 2, 2, 2, '2011/11/18', 200),
('B', 3, 3, 3, '2011/11/18', 3020),
('B', 4, 4, 4, '2011/11/18', 1200),
('B', 5, 5, 5, curdate(), 3300);

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

INSERT INTO Artículo (ArtículoID, Nombre, Precio, Stock) VALUES
(6, 'Cinta', 110, 50),
(7, 'Espatula' , 20, 22),
(8, 'Fratas', 35, 28),
(9, 'Regrla', 20, 78),
(10, 'Tenaza', 12, 13);

SELECT * FROM Artículo; 

SELECT Nombre, Precio,
CASE
WHEN Precio < 20 THEN 'BARATO'
WHEN precio BETWEEN 20 AND 40 THEN 'EQUILIBRADO'
ELSE 'CARO' END as Categoria
FROM Artículo;

SELECT * FROM Artículo WHERE Precio>100;
SELECT * FROM Artículo WHERE Precio>=20 AND Precio<=40;
SELECT * FROM Artículo WHERE Precio BETWEEN 40 AND 60;
SELECT * FROM Artículo WHERE Precio=20 AND Stock>30;
SELECT * FROM Artículo WHERE Precio=12 OR Precio=20 OR Precio=30;
SELECT * FROM Artículo WHERE Precio IN (12, 20, 30);
SELECT * FROM Artículo WHERE Precio NOT IN (12,20,30);

SELECT * FROM Artículo ORDER BY Precio DESC, Nombre DESC;

SELECT *, (Precio*0.12)+Precio AS IVA FROM Artículo;
SELECT *, 3 AS 'Cantidad de cuotas', (Precio/3)*1.05 AS 'Valor de cuota' FROM Artículo;

SELECT * FROM Artículo WHERE Precio<=50;
SELECT * FROM Artículo WHERE Precio>=500;
SELECT * FROM Artículo WHERE Stock<30;
SELECT ArtículoID, Nombre FROM Artículo WHERE Precio<>100;
SELECT * FROM Artículo WHERE Nombre LIKE '%a%';
SELECT * FROM Artículo WHERE Precio BETWEEN 100 AND 200;
SELECT * FROM Artículo WHERE (Precio*0.12)+Precio<28;
SELECT * FROM Artículo WHERE Stock<10 AND (Precio*0.12)+Precio>200;
SELECT * FROM Artículo WHERE (Precio/3)<50;


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

INSERT INTO Clientes (ClienteID, Nombre, Apellido, Cuit, Dirección, Comentarios) VALUES (6 , 'Mario', 'Pena', '20-14987008-8', 'Aguero 635', NULL);
INSERT INTO Clientes (ClienteID, Nombre, Apellido, Cuit, Dirección, Comentarios) VALUES (7 , 'Jorge', 'Rios', '20-37562854-5', 'Nazca 1532', NULL);
INSERT INTO Clientes (ClienteID, Nombre, Apellido, Cuit, Dirección, Comentarios) VALUES (8 , 'Valeria', 'Lagos', '20-25487418-8', 'Chipre 5', NULL);
INSERT INTO Clientes (ClienteID, Nombre, Apellido, Cuit, Dirección, Comentarios) VALUES (9 , 'Natalia', 'Peña' , '20-25982665-2', 'Jufre 3651', NULL);
INSERT INTO Clientes (ClienteID, Nombre, Apellido, Cuit, Dirección, Comentarios) VALUES (10, 'Juan', 'Khorn', '20-23587171-9', 'Belgrano 6525', NULL);

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

SELECT * FROM artículo WHERE ArtículoID IN (SELECT ArtículoID FROM facturas);
