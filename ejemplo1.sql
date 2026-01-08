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

INSERT INTO TPersona(Nombre, Apellidos, Telefono, FechaNac, fkDireccionId) VALUES("Marcelo", "Brea Perez", "666554433", 01/16/1987, 1);
INSERT INTO TPersona(Nombre, Apellidos, Telefono, FechaNac, fkDireccionId) VALUES("Nathalia", "Rodriguez Reyes", "666554433", 04/18/1988, 1);
INSERT INTO TPersona(Nombre, Apellidos, Telefono, FechaNac, fkDireccionId) VALUES("Loreto Montserrat", "Brea Rodriguez", "666554433", 03/28/2019, 1);
INSERT INTO TPersona(Nombre, Apellidos, Telefono, FechaNac, fkDireccionId) VALUES("Iago Marcel", "Brea Rodriguez", "666554433", 10/03/2025, 1);
INSERT INTO TPersona(Nombre, Apellidos, Telefono, FechaNac, fkDireccionId) VALUES("Melchor", "Mago", "666554433", 01/06/1900, 3);
INSERT INTO TPersona(Nombre, Apellidos, Telefono, FechaNac, fkDireccionId) VALUES("Gaspar", "Mago", "666554433", 01/06/1900, 3);
INSERT INTO TPersona(Nombre, Apellidos, Telefono, FechaNac, fkDireccionId) VALUES("Baltazar", "Mago", "666554433", 01/06/1900, 3);
