-- Carga de datos

select @@global.secure_file_priv;
USE henry;

CREATE TABLE IF NOT EXISTS compra
(
IdCompra INT,
Fecha DATE,
IdProducto INT,
Cantidad INT,
Precio DECIMAL(10,2),
IdProveedor INT
);

LOAD DATA INFILE 'Compra.csv'
INTO TABLE compra
FIELDS TERMINATED BY ',' enclosed by ''
LINES TERMINATED  BY '\n' ignore 1 lines
;

CREATE TABLE IF NOT EXISTS venta
(
IdVenta INTEGER,
Fecha DATE,
Fecha_Entrega DATE,
IdCanal INTEGER,
IdSucursal INTEGER,
IdEmpleado INTEGER,
IdProducto INTEGER,
Precio VARCHAR(30),
Cantidad VARCHAR(30)
);

LOAD DATA INFILE 'Venta.csv'
INTO TABLE venta
FIELDS TERMINATED BY ',' enclosed by ''
LINES TERMINATED  BY '\n' ignore 1 lines
;

CREATE TABLE IF NOT EXISTS sucursal 
(
ID INT,
Sucursal VARCHAR(50),
Domicilio VARCHAR(150),
Localidad VARCHAR(100),
Provincia VARCHAR(50),
Latitud VARCHAR(30),
Longitud VARCHAR(30)
);

LOAD DATA INFILE 'Sucursales.csv'
INTO TABLE sucursal
CHARACTER SET utf8mb3
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\n' IGNORE 1 LINES;
;

CREATE TABLE cliente
(
ID INT,
Provincia VARCHAR(50),
Nombre_Apellido VARCHAR(100),
Domicilio VARCHAR(200),
Telefono VARCHAR(50),
Edad VARCHAR(10),
Localidad VARCHAR(200),
X VARCHAR(50),
Y VARCHAR(50),
Fecha_Alta DATE,
Usuario_Alta VARCHAR(20),
Fecha_Ultima_Modificacion DATE,
Usuario_Ultima_Modificacion VARCHAR(20),
Marca_Baja INT,
col10 VARCHAR(1)
);

LOAD DATA INFILE 'Clientes.csv'
INTO TABLE cliente
CHARACTER SET utf8mb3
FIELDS TERMINATED BY ';' ESCAPED BY '\"'
LINES TERMINATED BY '\n' IGNORE 1 LINES;  

SELECT
*
FROM
cliente;

CREATE TABLE IF NOT EXISTS tipo_gasto
(
IdTipoGasto int,
Descripcion VARCHAR(100),
Monto_Aproximado DECIMAL(10,2)
);

LOAD DATA INFILE 'TiposDeGasto.csv'
INTO TABLE tipo_gasto
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' IGNORE 1 LINES;

CREATE TABLE IF NOT EXISTS proveedores
(
IDProveedor INT,
Nombre VARCHAR(100),
Domicilio VARCHAR(150),
Ciudad VARCHAR(80),
Provincia VARCHAR(50),
Pais VARCHAR(20),
Departamento VARCHAR(80)
);

LOAD DATA INFILE 'Proveedores.csv'
INTO TABLE proveedores
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' IGNORE 1 LINES;

CREATE TABLE producto
(
IDProducto INT,
Concepto VARCHAR(100),
Tipo VARCHAR(50),
Precio VARCHAR(40)
);

LOAD DATA INFILE 'PRODUCTOS.csv'
INTO TABLE producto
FIELDS TERMINATED BY ','  ESCAPED BY '\"'
LINES TERMINATED BY '\n' IGNORE 1 LINES;

CREATE TABLE empleado
(
IDEmpleado INT,
Apellido VARCHAR(100),
Nombre VARCHAR(100),
Sucursal VARCHAR(100),
Sector VARCHAR(50),
Cargo VARCHAR(50),
Salario VARCHAR(50)
);

LOAD DATA INFILE 'Empleados.csv'
INTO TABLE empleado
CHARACTER SET utf8mb3
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' IGNORE 1 LINES;

SELECT
*
FROM
empleado;

