/*4.1 Categorías con más de 3 libros*/
SELECT
    c.CategoryID,
    c.CategoryName,
    COUNT(b.BookID) AS TotalLibros
FROM BookCategories c
INNER JOIN Books b ON b.CategoryID = c.CategoryID
GROUP BY c.CategoryID, c.CategoryName
HAVING COUNT(b.BookID) > 3;

/*4.2 Usuarios con más de 2 libros reservados*/
SELECT
    u.UserID,
    u.FirstName,
    u.LastName,
    COUNT(r.ReservationID) AS TotalReservas
FROM Users u
INNER JOIN Reservations r ON r.UserID = u.UserID
GROUP BY u.UserID, u.FirstName, u.LastName
HAVING COUNT(r.ReservationID) > 2;