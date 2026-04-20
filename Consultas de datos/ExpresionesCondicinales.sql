/*3.1 Listado de libros con estado: “Disponible” si AvailableCopies > 0, si no “Agotado”*/
SELECT
    b.BookID,
    b.Title,
    b.Author,
    b.AvailableCopies,
    CASE
        WHEN b.AvailableCopies > 0 THEN 'Disponible'
        ELSE 'Agotado'
    END AS Estado
FROM Books b;

/*3.2 Usuarios: “Activo” si tienen libros prestados (ReturnDate IS NULL) y “Sin actividad” si no*/

SELECT
    u.UserID,
    u.FirstName,
    u.LastName,
    CASE
        WHEN EXISTS (
            SELECT 1
            FROM Loans l
            WHERE l.UserID = u.UserID
              AND l.ReturnDate IS NULL
        ) THEN 'Activo'
        ELSE 'Sin actividad'
    END AS EstadoUsuario
FROM Users u;

