
---- Crear la base de datos
--CREATE DATABASE EnergiaTarifasDB
--USE EnergiaTarifasDB

-- Países
CREATE TABLE Paises (
    ID_Pais INT PRIMARY KEY,
    Nombre_Pais VARCHAR(255)
);

-- Regiones
CREATE TABLE Regiones (
    ID_Region INT PRIMARY KEY,
    Nombre_Region VARCHAR(255),
    ID_Pais INT,
    FOREIGN KEY (ID_Pais) REFERENCES Paises(ID_Pais)
);

-- Clases de dia
CREATE TABLE ClasesDeDia (
    ID_ClaseDia INT PRIMARY KEY,
    Descripcion VARCHAR(255)
);

-- Periodos
CREATE TABLE Periodos (
    ID_Periodo INT PRIMARY KEY,
    Descripcion VARCHAR(255)
);

-- Tipos de energia
CREATE TABLE TiposDeEnergia (
    ID_TipoEnergia INT PRIMARY KEY,
    Descripcion VARCHAR(255)
);

-- Tipos de clientes
CREATE TABLE TiposDeClientes (
    ID_TipoCliente INT PRIMARY KEY,
    Descripcion VARCHAR(255)
);

-- Tarifas
CREATE TABLE Tarifas (
    ID_Tarifa INT PRIMARY KEY,
    Descripcion VARCHAR(255),
    ID_TipoEnergia INT,
    ID_TipoCliente INT,
    FOREIGN KEY (ID_TipoEnergia) REFERENCES TiposDeEnergia(ID_TipoEnergia),
    FOREIGN KEY (ID_TipoCliente) REFERENCES TiposDeClientes(ID_TipoCliente)
);

-- Reglas de tarifas
CREATE TABLE ReglasDeTarifas (
    ID_ReglaTarifa INT PRIMARY KEY,
    ID_Tarifa INT,
    Precio FLOAT,
    FOREIGN KEY (ID_Tarifa) REFERENCES Tarifas(ID_Tarifa)
);

-- Horarios
CREATE TABLE Horarios (
    ID_Horario INT PRIMARY KEY,
    ID_ClaseDia INT,
    ID_Periodo INT,
    ID_Region INT,
    Total_Horas INT,
    Horario VARCHAR(255),
    FOREIGN KEY (ID_ClaseDia) REFERENCES ClasesDeDia(ID_ClaseDia),
    FOREIGN KEY (ID_Periodo) REFERENCES Periodos(ID_Periodo),
    FOREIGN KEY (ID_Region) REFERENCES Regiones(ID_Region)
);

-- Horarios de tarifas
CREATE TABLE HorariosDeTarifas (
    ID_HorarioDeTarifa INT PRIMARY KEY,
    ID_Horario INT,
    ID_ReglaTarifa INT,
    FOREIGN KEY (ID_Horario) REFERENCES Horarios(ID_Horario),
    FOREIGN KEY (ID_ReglaTarifa) REFERENCES ReglasDeTarifas(ID_ReglaTarifa)
);
