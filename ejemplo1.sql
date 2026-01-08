DROP DATABASE IF EXISTS repasosql;
CREATE DATABASE repasosql;
USE repasosql;

CREATE TABLE TDireccion
(
    pkID INT(4) NOT NULL AUTO_INCREMENT,
    Calle VARCHAR(20) NOT NULL,
    Numero INT(4) NOT NULL,
    CP INT(5) NOT NULL DEFAULT 33401,
    Provincia VARCHAR(20) NOT NULL,
    PRIMARY KEY(pkID)
);

CREATE TABLE TPersona
(
    pkID INT(4) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(20) NOT NULL,
    Apellidos VARCHAR(20) NOT NULL,
    Telefono VARCHAR(10),
    FechaNac DATE,
    fkDireccionId INT(4) NOT NULL,
    FOREIGN KEY(fkDireccionId) REFERENCES TDireccion(pkID) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE
);

INSERT INTO TDireccion(Calle, Numero, CP, Provincia) VALUES("Alfaraz", 7, 33410, "Asturias");
INSERT INTO TDireccion(Calle, Numero, CP, Provincia) VALUES("Principal", 1, 28003, "Madrid");
INSERT INTO TDireccion(Calle, Numero, CP, Provincia) VALUES("Reyes Magos", 3, 33011, "Asturias");

INSERT INTO TPersona(Nombre, Apellidos, Telefono, FechaNac, fkDireccionId) VALUES("Marcelo", "Brea Perez", "666554433", "1987-01-16", 1);
INSERT INTO TPersona(Nombre, Apellidos, Telefono, FechaNac, fkDireccionId) VALUES("Nathalia", "Rodriguez Reyes", "666554433", "1988-04-18", 1);
INSERT INTO TPersona(Nombre, Apellidos, Telefono, FechaNac, fkDireccionId) VALUES("Loreto Montserrat", "Brea Rodriguez", "666554433", "2019-03-28", 1);
INSERT INTO TPersona(Nombre, Apellidos, Telefono, FechaNac, fkDireccionId) VALUES("Iago Marcel", "Brea Rodriguez", "666554433", "2025-10-03", 1);
INSERT INTO TPersona(Nombre, Apellidos, Telefono, FechaNac, fkDireccionId) VALUES("Melchor", "Mago", "666554433", "1900-01-06", 3);
INSERT INTO TPersona(Nombre, Apellidos, Telefono, FechaNac, fkDireccionId) VALUES("Gaspar", "Mago", "666554433", "1900-01-06", 3);
INSERT INTO TPersona(Nombre, Apellidos, Telefono, FechaNac, fkDireccionId) VALUES("Baltazar", "Mago", "666554433", "1900-01-06", 3);
