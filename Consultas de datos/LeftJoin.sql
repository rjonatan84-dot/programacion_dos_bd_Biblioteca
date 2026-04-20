/*6.1 Todos los libros + usuario que los reservó (si existe reserva)*/
SELECT
    b.Title,
    u.FirstName,
    u.LastName,
    r.ReservationDate,
    r.Status
FROM Books b
LEFT JOIN Reservations r ON r.BookID = b.BookID
LEFT JOIN Users u ON u.UserID = r.UserID;

/*6.2 Todos los usuarios + título del libro prestado (si existe préstamo)*/

SELECT
    u.FirstName,
    u.LastName,
    b.Title,
    l.LoanDate,
    l.ReturnDate
FROM Users u
LEFT JOIN Loans l ON l.UserID = u.UserID
LEFT JOIN Books b ON b.BookID = l.BookID;