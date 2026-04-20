/*8.1 Títulos de libros en mayúsculas*/
SELECT UPPER(Title) AS TitleUpper
FROM Books;

/*8.2 Nombres concatenados (Nombre Completo)*/
SELECT CONCAT(FirstName, ' ', LastName) AS NombreCompleto
FROM Users;