/*10.1 Total de copias disponibles por categoría*/
SELECT
    c.CategoryName,
    SUM(b.AvailableCopies) AS TotalCopiasDisponibles
FROM BookCategories c
INNER JOIN Books b ON b.CategoryID = c.CategoryID
GROUP BY c.CategoryName;

/*10.2 Número total de libros prestados por cada usuario*/
SELECT
    u.UserID,
    u.FirstName,
    u.LastName,
    COUNT(l.LoanID) AS TotalPrestamos
FROM Users u
LEFT JOIN Loans l ON l.UserID = u.UserID
GROUP BY u.UserID, u.FirstName, u.LastName;