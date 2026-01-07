DROP DATABASE IF EXISTS repasosql;
CREATE DATABASE repasosql;
USE repasosql;

CREATE TABLE TDireccion
(
    pkDirID INT(4) NOT NULL,
    Calle VARCHAR(20) NOT NULL,
    Numero INT(4) NOT NULL,
    CP INT(5) NOT NULL,
    Provincia VARCHAR(20) NOT NULL
);

CREATE TABLE TPersona
(
    pkID INT(4) NOT NULL PRIMARY KEY,
    Nombre VARCHAR(20) NOT NULL,
    Apellidos VARCHAR(20) NOT NULL,
    Telefono VARCHAR(10),
    FechaNac DATE,
    fkDireccionId INT(4) NOT NULL,
    FOREIGN KEY (fkDireccionId) REFERENCES TDireccion(pkDirID)
);