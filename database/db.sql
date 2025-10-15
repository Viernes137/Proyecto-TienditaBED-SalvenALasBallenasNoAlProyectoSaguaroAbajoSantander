CREATE DATABASE IF NOT EXISTS Changarros;
USE Changarros;

CREATE TABLE tiendas (
    id_tienda VARCHAR(50) PRIMARY KEY NOT NULL,
    nombre_t VARCHAR(255),
    telefono_t VARCHAR(20),
    fecha_apertura DATETIME,
    estado_t VARCHAR(100),
    colonia_t VARCHAR(100),
    direccion_t VARCHAR(255),
    horario_operacion VARCHAR(100),
    tipo_t VARCHAR(100),
    descripcion_t TEXT
);

CREATE TABLE productos (
    id_producto VARCHAR(50) PRIMARY KEY NOT NULL,
    nombre_prd VARCHAR(255),
    descripcion_prd TEXT,
    categoria VARCHAR(100),
    procedencia VARCHAR(100)
);

CREATE TABLE provedores (
    id_provedor VARCHAR(50) PRIMARY KEY NOT NULL,
    nombre_prv VARCHAR(255),
    telefono_prv VARCHAR(20),
    correo_prv VARCHAR(255)
);

CREATE TABLE empleados (
    id_empleado VARCHAR(50) PRIMARY KEY NOT NULL,
    id_tienda VARCHAR(50) NOT NULL,
    nombre_emp VARCHAR(255),
    puesto VARCHAR(100),
    salario INT,
    curp VARCHAR(20),
    telefono_emp VARCHAR(20),
    correo_emp VARCHAR(255),
    FOREIGN KEY (id_tienda) REFERENCES tiendas(id_tienda)
);

CREATE TABLE producto_tienda (
    id_particular VARCHAR(50) PRIMARY KEY NOT NULL,
    id_tienda VARCHAR(50) NOT NULL,
    id_producto VARCHAR(50) NOT NULL,
    id_provedor VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_tienda) REFERENCES tiendas(id_tienda),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto),
    FOREIGN KEY (id_provedor) REFERENCES provedores(id_provedor)
);

CREATE TABLE precio_compra (
    id_particular VARCHAR(50) NOT NULL,
    precio_compra INT,
    fecha_ini DATETIME,
    fecha_fin DATETIME,
    FOREIGN KEY (id_particular) REFERENCES producto_tienda(id_particular)
);

CREATE TABLE precio_venta (
    id_particular VARCHAR(50) NOT NULL,
    precio_venta INT,
    fecha_ini DATETIME,
    fecha_fin DATETIME,
    FOREIGN KEY (id_particular) REFERENCES producto_tienda(id_particular)
);

CREATE TABLE inventario (
    id_particular VARCHAR(50) NOT NULL,
    cantidad INT,
    fecha_registro DATETIME,
    FOREIGN KEY (id_particular) REFERENCES producto_tienda(id_particular)
);

CREATE TABLE ventas (
    id_venta VARCHAR(50) PRIMARY KEY NOT NULL,
    fecha_transaccion DATETIME,
    tipo VARCHAR(50)
);

CREATE TABLE detalles_ventas (
    id_venta VARCHAR(50) NOT NULL,
    id_particular VARCHAR(50) NOT NULL,
    cantidad INT,
    FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
    FOREIGN KEY (id_particular) REFERENCES producto_tienda(id_particular)
);

#DROP DATABASE Changarros;