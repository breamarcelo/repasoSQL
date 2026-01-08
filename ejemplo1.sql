DROP DATABASE IF EXISTS repasosql;
CREATE DATABASE repasosql;
USE repasosql;

CREATE TABLE TDireccion
(
    pkID INT(4) NOT NULL,
    Calle VARCHAR(20) NOT NULL,
    Numero INT(4) NOT NULL,
    CP INT(5) NOT NULL DEFAULT 33401,
    Provincia VARCHAR(20) NOT NULL,
    PRIMARY KEY (pkID)
);

CREATE TABLE TPersona
(
    pkID INT(4) NOT NULL PRIMARY KEY,
    Nombre VARCHAR(20) NOT NULL,
    Apellidos VARCHAR(20) NOT NULL,
    Telefono VARCHAR(10),
    FechaNac DATE,
    fkDireccionId INT(4) NOT NULL,
    FOREIGN KEY (fkDireccionId) REFERENCES TDireccion(pkID) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE
);

INSERT INTO TDireccion
    (Calle, Numero, CP, Provincia)
VALUES("Alfaraz", 7, 33410, "Asturias");
INSERT INTO TDireccion
    (Calle, Numero, CP, Provincia)
VALUES("Principal", 1, 28003, "Madrid");
INSERT INTO TDireccion
    (Calle, Numero, CP, Provincia)
VALUES("Reyes Magos", 3, 33011, "Asturias");


