DROP DATABASE IF EXISTS banco;
CREATE DATABASE banco;
USE banco;

CREATE TABLE cuentas
(
    id INTEGER PRIMARY KEY,
    saldo DECIMAL(11,2) CHECK (saldo >= 0)
);

INSERT INTO cuentas
VALUES(1, 1000);
INSERT INTO cuentas
VALUES(2, 2000);
INSERT INTO cuentas
VALUES(3, 0);

ROLLBACK;
START TRANSACTION;
UPDATE cuentas SET saldo= saldo + 100 WHERE id = 2;
UPDATE cuentas SET saldo= saldo - 100 WHERE id = 3;
COMMIT;

SELECT *
FROM cuentas;