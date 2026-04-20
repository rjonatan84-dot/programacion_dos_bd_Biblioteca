/*7.1 Todos los libros + usuarios que los han reservado, incluyendo libros sin reservas*/
SELECT
    b.Title,
    u.FirstName,
    u.LastName,
    r.ReservationDate,
    r.Status
FROM Reservations r
RIGHT JOIN Books b ON b.BookID = r.BookID
LEFT JOIN Users u ON u.UserID = r.UserID;

/*7.2 Todos los usuarios + títulos de libros prestados, incluyendo usuarios sin préstamos*/
SELECT
    u.FirstName,
    u.LastName,
    b.Title,
    l.LoanDate,
    l.ReturnDate
FROM Loans l
RIGHT JOIN Users u ON u.UserID = l.UserID
LEFT JOIN Books b ON b.BookID = l.BookID;