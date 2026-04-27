
SELECT * FROM Books LIMIT 5;
SELECT * FROM Users LIMIT 5;

-- INSERT 
INSERT INTO Users (FirstName, LastName, Email, PhoneNumber)
VALUES ('Test', 'Lector', 'test.lector@example.com', '0000000000');

-- UPDATE 
UPDATE Books SET AvailableCopies = 99 WHERE BookID = 1;

-- DELETE 
DELETE FROM Reservations WHERE ReservationID = 1;

------------------------------------------------------------------------------

INSERT INTO Users (FirstName, LastName, Email, PhoneNumber)
VALUES ('Editor', 'Prueba', 'editor.prueba@example.com', '1111111111');

CREATE TABLE PruebaEditor (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50)
);

DROP TABLE Books;

---------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS AuditoriaAdmin (
  AuditID INT AUTO_INCREMENT PRIMARY KEY,
  Accion VARCHAR(50) NOT NULL,
  Fecha DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO AuditoriaAdmin (Accion) VALUES ('CREACION_TABLA');
INSERT INTO AuditoriaAdmin (Accion) VALUES ('INSERCION_REGISTRO');

SELECT * FROM AuditoriaAdmin;

DROP TABLE AuditoriaAdmin;