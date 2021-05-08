-- Select witout table, rename a column. Comparison Operators. Some Logical Operators. keywords: ORDER BY - ASC AND DESC, . Clause LIMIT 

SELECT (2+2)-1 AS Resultado, (3.14*2) AS Pi_2; 

USE test;

CREATE TABLE Alumnos (
						ID INT NOT NULL AUTO_INCREMENT,
                        Nombre VARCHAR(15) NOT NULL,
                        Apellido VARCHAR(15) NOT NULL,
                        Edad INT UNSIGNED NULL,
                        PRIMARY KEY (ID)                        
);

INSERT INTO Alumnos (Nombre, Apellido, Edad) VALUES ('Liliana','Morgan','21');
INSERT INTO Alumnos (Nombre, Apellido, Edad) VALUES ('Juan','Morgan','25');

INSERT INTO Alumnos (Nombre, Apellido, Edad) VALUES 
('Sebastian','Kumar','29'),
('Mia','Hamm',NULL),
('Susana','Carrillo','17'),
('Claudia','Ods','33'),
('Irene','Viola','42'),
('Daniel','Gomez',NULL),
('Zara','Leander','31'),
('George','Piotti',NULL),
('Harry','Correia','22');

SELECT Nombre, Edad FROM Alumnos;

SELECT * FROM Alumnos ORDER BY Apellido desc;
SELECT * FROM Alumnos ORDER BY Apellido DESC, Edad ASC;

SELECT * FROM Alumnos LIMIT 3;

SELECT * FROM Alumnos WHERE Edad=42;
SELECT Apellido, Edad FROM Alumnos WHERE Edad>20;
SELECT Nombre, Edad FROM Alumnos WHERE Edad<22;
SELECT Apellido, Edad FROM Alumnos WHERE Apellido<>'Morgan';
SELECT Nombre, Edad FROM Alumnos WHERE Edad>=33;

SELECT * FROM Alumnos WHERE Apellido='Viola' or Edad='22';

SELECT * From Alumnos WHERE Edad BETWEEN 15 AND 30;

SELECT * From Alumnos WHERE Nombre LIKE '%a_';
SELECT * From Alumnos WHERE Nombre LIKE '%u%';
SELECT * From Alumnos WHERE Nombre LIKE '_r%';

SELECT * From Alumnos WHERE Edad IS NULL;

CREATE TABLE Productos(
						ID INT AUTO_INCREMENT,
                        Código TINYINT,
						Categoría VARCHAR(15),
						Nombre VARCHAR(20),
						Precio DOUBLE,
						Stock INT,
						Marca VARCHAR(23),
                        PRIMARY KEY(ID)
);

DESCRIBE Productos;

INSERT INTO Productos (Código, Categoría, Nombre, Precio, Stock, Marca) VALUES 
('1','Laptop','Spectre x360','789','12','HP'),
('2','Laptop','XPS 13','1399','20','Dell'),
('3','Laptop','MateBook 13','926.99','3','Huawei'),
('4','Laptop','MacBook Pro','2199','15','Apple'),
('5','Laptop','Microsoft Surface','899','5','Microsoft'),
('6','smartphone','Galaxy S21 Ultra','999.99','58','Samsung'),
('7','smartphone','iPhone 12 Pro Max','999','25','Apple'),
('8','smartphone','iPhone 12 mini','829','30','Apple'),
('9','smartphone','9 Pro','1069.99','8','OnePlus'),
('10','smartphone','Galaxy Note 20 Ultra','1024.50','100','Samsung'),
('11','Laptop','XPS 15 2-in-1','1999.11','6','Dell'),
('12','Laptop','Chromebook Flip','898','8','Asus'),
('13','Laptop','VivoBook S15','485','50','Asus'),
('14','Laptop','MacBook 12-inch','741.64','30','Apple'),
('15','Laptop','Spectre Folio','2199.77','1','HP'),
('16','smartphone','Pixel 5','699','22','Google'),
('17','smartphone','Pixel 4a','349','13','Google'),
('18','smartphone','Moto One 5G','299.94','77','Motorola'),
('19','smartphone','Moto G Power','190','40','Motorola'),
('20','smartphone','Mi 10T Pro','430','57','Xiaomi');

SELECT * FROM Productos LIMIT 5;
SELECT ID, Categoría, Nombre FROM Productos LIMIT 5,10; 
SELECT ID, Categoría, Nombre FROM Productos LIMIT 10 OFFSET 5;

SELECT *, (precio*0.10) AS IVA, 1+1 As Suma FROM Productos;

SELECT Categoría, Nombre, Precio FROM Productos WHERE Categoría='smartphone';
SELECT * FROM Productos WHERE Marca<>'Apple';
SELECT * FROM Productos WHERE Precio<=600;

SELECT * FROM Productos WHERE Marca='Samsung' AND Precio>1000 AND Categoría='smartphone';
SELECT * FROM Productos WHERE Marca='Samsung' OR Precio>1000;

SELECT * FROM Productos WHERE Stock BETWEEN 1 AND 30 AND Categoría='Laptop' AND Precio>800;

SELECT * FROM Productos WHERE Marca IN('Asus', 'Apple', 'Microsoft');


SELECT * FROM comercioit.clientes;

