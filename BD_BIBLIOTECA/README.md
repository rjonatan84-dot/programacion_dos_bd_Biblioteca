# Base de Datos Biblioteca – Taller de Consultas SQL Avanzadas

Este proyecto corresponde al **Taller Número 1: Diseño de Consultas SQL Avanzadas**, cuyo objetivo es aplicar diferentes técnicas del lenguaje SQL sobre una base de datos relacional que modela el funcionamiento básico de una **biblioteca**.

La base de datos permite gestionar categorías de libros, libros, usuarios, personal, préstamos y reservas, facilitando el análisis y la consulta avanzada de la información mediante subconsultas, joins, funciones agregadas, condicionales y manejo de fechas.

---

## Estructura de la Base de Datos

La base de datos está compuesta por las siguientes tablas:

- **BookCategories**: almacena las categorías de los libros.
- **Books**: contiene la información de los libros disponibles en la biblioteca.
- **Users**: registra los datos de los usuarios del sistema.
- **Staff**: almacena la información del personal de la biblioteca.
- **Loans**: gestiona los préstamos de libros realizados por los usuarios.
- **Reservations**: controla las reservas de libros realizadas por los usuarios.


##  Tecnologías Utilizadas

- **Sistema Gestor de Base de Datos:** MySQL  
- **Lenguaje:** SQL  
- **Modelo:** Relacional  
- **Compatibilidad:** MySQL 8.x  

---

## Instalación y Ejecución

Para crear y cargar la base de datos en un servidor MySQL, siga estos pasos:

1. Abrir MySQL Workbench o la terminal de MySQL.
2. Ejecutar el archivo `script.sql`.
3. El script realizará automáticamente:
   - La creación de la base de datos `db_library`.
   - La creación de todas las tablas con sus respectivas llaves primarias y foráneas.
   - La inserción de datos de prueba para facilitar la ejecución de las consultas.

