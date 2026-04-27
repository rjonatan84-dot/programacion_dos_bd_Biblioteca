/**1. Crear usuario lector_grupo y dar SOLO SELECT**/

-- Crear usuario
CREATE USER IF NOT EXISTS 'lector_grupo'@'localhost' IDENTIFIED BY 'Lector123*';

-- Dar privilegio SOLO de lectura
GRANT SELECT ON db_library.* TO 'lector_grupo'@'localhost';

-- Aplicar cambios
FLUSH PRIVILEGES;

-- Verificar privilegios
SHOW GRANTS FOR 'lector_grupo'@'localhost';

----------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------

/**2.  Crear usuario editor_grupo y dar INSERT/UPDATE/DELETE**/
CREATE USER IF NOT EXISTS 'editor_grupo'@'localhost' IDENTIFIED BY 'Editor123*';

-- Permitir modificar datos, pero NO estructura
GRANT INSERT, UPDATE, DELETE ON db_library.* TO 'editor_grupo'@'localhost';

FLUSH PRIVILEGES;

SHOW GRANTS FOR 'editor_grupo'@'localhost';

----------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------

/**3. Crear usuario admin_grupo y dar ALL PRIVILEGES**/

CREATE USER IF NOT EXISTS 'admin_grupo'@'localhost' IDENTIFIED BY 'Admin123*';

GRANT ALL PRIVILEGES ON db_library.* TO 'admin_grupo'@'localhost';

FLUSH PRIVILEGES;

SHOW GRANTS FOR 'admin_grupo'@'localhost';