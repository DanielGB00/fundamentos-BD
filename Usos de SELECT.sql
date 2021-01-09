-- Traer todos los campos de posts
SELECT	*
FROM   posts;

-- Traer solo los campos titulo, fecha_publicacion y estatus
SELECT	titulo, fecha_publicacion, estatus
FROM   posts;

-- Podemos ademas de traer, asignarle un alias con AS 
SELECT	titulo AS encabezado, fecha_publicacion AS publicado, estatus AS estado
FROM   posts;

-- Ademas podemos contar el numero de posts
SELECT	count(*)
FROM   posts;

-- Incluso ponerle un alias a este nuevo dato
SELECT	count(*) AS numero_posts
FROM   posts;