/*5.1 Nombres de usuarios y títulos de libros que han sido prestados*/

SELECT
    u.FirstName,
    u.LastName,
    b.Title,
    l.LoanDate,
    l.ReturnDate
FROM Loans l
INNER JOIN Users u ON u.UserID = l.UserID
INNER JOIN Books b ON b.BookID = l.BookID;

/*5.2 Nombres de usuarios y títulos de libros que han reservado*/
SELECT
    u.FirstName,
    u.LastName,
    b.Title,
    r.ReservationDate,
    r.Status
FROM Reservations r
INNER JOIN Users u ON u.UserID = r.UserID
INNER JOIN Books b ON b.BookID = r.BookID;