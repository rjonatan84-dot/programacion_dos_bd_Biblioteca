/*9.1 Días desde que se reservó cada libro*/
SELECT
    r.ReservationID,
    b.Title,
    r.ReservationDate,
    DATEDIFF(CURDATE(), r.ReservationDate) AS DiasTranscurridos
FROM Reservations r
INNER JOIN Books b ON b.BookID = r.BookID;

/*9.2 Préstamos pendientes de devolución (ReturnDate IS NULL)*/
SELECT
    l.LoanID,
    u.FirstName,
    u.LastName,
    b.Title,
    l.LoanDate
FROM Loans l
INNER JOIN Users u ON u.UserID = l.UserID
INNER JOIN Books b ON b.BookID = l.BookID
WHERE l.ReturnDate IS NULL;

