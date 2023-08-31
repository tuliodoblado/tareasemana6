
--Nos colocamos en la tabla 
USE EnergiaTarifasDB

-- Insertar datos en la tabla de Paises
INSERT INTO Paises VALUES (1, 'Estados Unidos');
INSERT INTO Paises VALUES (2, 'Canadá');
INSERT INTO Paises VALUES (3, 'México');
INSERT INTO Paises VALUES (4, 'Honduras');
INSERT INTO Paises VALUES (5, 'Colombia');

-- Insertar datos en la tabla de Regiones
INSERT INTO Regiones VALUES (1, 'California', 1);
INSERT INTO Regiones VALUES (2, 'Quebec', 2);
INSERT INTO Regiones VALUES (3, 'Ciudad de México', 3);
INSERT INTO Regiones VALUES (4, 'Tegucigalpa', 4);
INSERT INTO Regiones VALUES (5, 'Bogotá', 5);

-- Insertar datos en la tabla de Clases de dia
INSERT INTO ClasesDeDia VALUES (1, 'Laborable');
INSERT INTO ClasesDeDia VALUES (2, 'Sábado');
INSERT INTO ClasesDeDia VALUES (3, 'Domingo');
INSERT INTO ClasesDeDia VALUES (4, 'Feriado');
INSERT INTO ClasesDeDia VALUES (5, 'Vacaciones Escolares');

-- Insertar datos en la tabla de Periodos
INSERT INTO Periodos VALUES (1, 'Punta');
INSERT INTO Periodos VALUES (2, 'Intermedio');
INSERT INTO Periodos VALUES (3, 'Valle');
INSERT INTO Periodos VALUES (4, 'Noche');
INSERT INTO Periodos VALUES (5, 'Madrugada');

-- Insertar datos en la tabla de Tipos de energia
INSERT INTO TiposDeEnergia VALUES (1, 'Renovable');
INSERT INTO TiposDeEnergia VALUES (2, 'No Renovable');
INSERT INTO TiposDeEnergia VALUES (3, 'Solar');
INSERT INTO TiposDeEnergia VALUES (4, 'Eólica');
INSERT INTO TiposDeEnergia VALUES (5, 'Hidroeléctrica');

-- Insertar datos en la tabla de Tipos de clientes
INSERT INTO TiposDeClientes VALUES (1, 'Residencial');
INSERT INTO TiposDeClientes VALUES (2, 'Comercial');
INSERT INTO TiposDeClientes VALUES (3, 'Industrial');
INSERT INTO TiposDeClientes VALUES (4, 'Gubernamental');
INSERT INTO TiposDeClientes VALUES (5, 'Educativo');

-- Insertar datos en la tabla de Tarifas
INSERT INTO Tarifas VALUES (1, 'Tarifa Residencial', 1, 1);
INSERT INTO Tarifas VALUES (2, 'Tarifa Comercial', 2, 2);
INSERT INTO Tarifas VALUES (3, 'Tarifa Industrial', 2, 3);
INSERT INTO Tarifas VALUES (4, 'Tarifa Gubernamental', 1, 4);
INSERT INTO Tarifas VALUES (5, 'Tarifa Educativo', 3, 5);

-- Insertar datos en la tabla de Reglas de tarifas
INSERT INTO ReglasDeTarifas VALUES (1, 1, 0.12);
INSERT INTO ReglasDeTarifas VALUES (2, 2, 0.15);
INSERT INTO ReglasDeTarifas VALUES (3, 3, 0.10);
INSERT INTO ReglasDeTarifas VALUES (4, 4, 0.08);
INSERT INTO ReglasDeTarifas VALUES (5, 5, 0.05);

-- Insertar datos en la tabla de Horarios
INSERT INTO Horarios VALUES (1, 1, 1, 4, 10, '10 a 16, 18 a 22');
INSERT INTO Horarios VALUES (2, 2, 2, 4, 16, '6 a 12, 13 a 19');
INSERT INTO Horarios VALUES (3, 3, 3, 4, 16, '0 a 11, 23 a 24');
INSERT INTO Horarios VALUES (4, 1, 2, 1, 9, '5 a 10, 16 a 18, 22 a 24');
INSERT INTO Horarios VALUES (5, 2, 3, 1, 6, '0 a 6, 20 a 24');

-- Insertar datos en la tabla de Horarios de tarifas
INSERT INTO HorariosDeTarifas VALUES (1, 1, 1);
INSERT INTO HorariosDeTarifas VALUES (2, 2, 2);
INSERT INTO HorariosDeTarifas VALUES (3, 3, 3);
INSERT INTO HorariosDeTarifas VALUES (4, 4, 4);
INSERT INTO HorariosDeTarifas VALUES (5, 5, 5);
