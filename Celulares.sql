-- Bases de datos
-- Entregable 6. Creación de una Base de Datos
-- Pablo Moreno Lopez
-- 14716PB02


CREATE DATABASE Celulares;
USE Celulares;
CREATE TABLE fabricante(
    codigo_fabricante INT(10) PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL
);
CREATE TABLE producto(
    codigo_producto INT(10) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DOUBLE ,
    codigo_fabricante INT,
    FOREIGN KEY (codigo_fabricante) REFERENCES fabricante(codigo_fabricante)
);

INSERT INTO fabricante (codigo_fabricante, nombre) VALUES (1, 'Asus');
INSERT INTO fabricante (codigo_fabricante, nombre) VALUES (2, 'Lenovo');
INSERT INTO fabricante (codigo_fabricante, nombre) VALUES (3, 'Hewlett - Packard');
INSERT INTO fabricante (codigo_fabricante, nombre) VALUES (4, 'Samsung');
INSERT INTO fabricante (codigo_fabricante, nombre) VALUES (5, 'Seagate');
INSERT INTO fabricante (codigo_fabricante, nombre) VALUES (6, 'Crucial');
INSERT INTO fabricante (codigo_fabricante, nombre) VALUES (7, 'Gigabyte');
INSERT INTO fabricante (codigo_fabricante, nombre) VALUES (8, 'Huawei');
INSERT INTO fabricante (codigo_fabricante, nombre) VALUES (9, 'Xiaomi');

INSERT INTO producto (codigo_producto, nombre, precio, codigo_fabricante) VALUES (1, 'Disco Duro SATA3 1TB', 86.99, 5);
INSERT INTO producto (codigo_producto, nombre, precio, codigo_fabricante) VALUES (2, 'Memoria RAM DDR4 8GB', 120, 6);
INSERT INTO producto (codigo_producto, nombre, precio, codigo_fabricante) VALUES (3, 'Disco SSD 1TB', 150.99, 4);
INSERT INTO producto (codigo_producto, nombre, precio, codigo_fabricante) VALUES (4, 'GeForce GTX 1050 Ti', 185, 7);
INSERT INTO producto (codigo_producto, nombre, precio, codigo_fabricante) VALUES (5, 'GeForce GTX 1080 Xtreme', 755, 6);
INSERT INTO producto (codigo_producto, nombre, precio, codigo_fabricante) VALUES (6, 'Monitor 24 LED Full HD', 202, 1);
INSERT INTO producto (codigo_producto, nombre, precio, codigo_fabricante) VALUES (7, 'DMonitor 27 LED Full HD', 245.99, 1);
INSERT INTO producto (codigo_producto, nombre, precio, codigo_fabricante) VALUES (8, 'Portatil Yoga 520', 559, 2);
INSERT INTO producto (codigo_producto, nombre, precio, codigo_fabricante) VALUES (9, 'Portatil Ideapad 320', 444, 2);
INSERT INTO producto (codigo_producto, nombre, precio, codigo_fabricante) VALUES (10, 'Impresora HP Deskjet 3720', 59.99, 3);
INSERT INTO producto (codigo_producto, nombre, precio, codigo_fabricante) VALUES (11, 'Impresora HP Laserjet Pro M26nw', 180, 3);

SELECT * FROM fabricante;

SELECT * FROM producto;