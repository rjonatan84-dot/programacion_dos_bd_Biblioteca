/*1.1 Nombres y apellidos de usuarios que han reservado un libro de categoría "Fiction"*/
SELECT u.FirstName, u.LastName
FROM Users u
WHERE u.UserID IN (
    SELECT r.UserID
    FROM Reservations r
    INNER JOIN Books b ON b.BookID = r.BookID
    INNER JOIN BookCategories c ON c.CategoryID = b.CategoryID
    WHERE c.CategoryName = 'Fiction'
);

/*1.2 Título y autor de libros que están prestados (préstamo activo = ReturnDate IS NULL)*/
SELECT b.Title, b.Author
FROM Books b
WHERE EXISTS (
    SELECT 1
    FROM Loans l
    WHERE l.BookID = b.BookID
      AND l.ReturnDate IS NULL
);
