/*2.1 Libros reservados, pero NO prestados*/
SELECT DISTINCT b.Title
FROM Books b
INNER JOIN Reservations r ON r.BookID = b.BookID
WHERE NOT EXISTS (
    SELECT 1
    FROM Loans l
    WHERE l.BookID = b.BookID
);

/*2.2 Libros prestados, pero NO reservados*/

SELECT DISTINCT b.Title
FROM Books b
INNER JOIN Loans l ON l.BookID = b.BookID
WHERE NOT EXISTS (
    SELECT 1
    FROM Reservations r
    WHERE r.BookID = b.BookID
);