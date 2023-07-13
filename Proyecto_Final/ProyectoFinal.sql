
CREATE DATABASE Inventario;

USE Inventario;

CREATE TABLE Proveedor (
    Cod_Proveedor INT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Direccion VARCHAR(255) NOT NULL,
    Ciudad VARCHAR(255) NOT NULL,
    Provincia VARCHAR(255) NOT NULL
);

CREATE TABLE Categoria (
    Cod_Categoria INT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL
);

CREATE TABLE Pieza (
    Cod_Pieza INT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Color VARCHAR(255) NOT NULL,
    Precio DECIMAL(10, 2) NOT NULL,
    Cod_Categoria INT,
    FOREIGN KEY (Cod_Categoria) REFERENCES Categoria(Cod_Categoria)
);

CREATE TABLE Suministro (
    Cod_Suministro INT NOT NULL,
    Cod_Proveedor INT,
    Cod_Pieza INT,
    Fecha DATE,
    Cantidad INT,
    PRIMARY KEY (Cod_Suministro, Cod_Proveedor, Cod_Pieza),
    FOREIGN KEY (Cod_Proveedor) REFERENCES Proveedor(Cod_Proveedor),
    FOREIGN KEY (Cod_Pieza) REFERENCES Pieza(Cod_Pieza)
);