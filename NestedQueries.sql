 -- Ejemplo de Nested Queries donde creamos primero una new_table_proyection y luego realizamos count 
SELECT new_table_projection.date, COUNT(*) AS posts_count
FROM (
    SELECT DATE(MIN(fecha_publicacion)) AS date, YEAR(fecha_publicacion) AS post_year
    FROM posts
    GROUP BY post_year
) AS new_table_projection
GROUP BY new_table_projection.date 
ORDER BY new_table_projection.date;

-- Ejemplo de Nested Queries donde definimos un where sea la fecha maxima y traer el post de dicha fecha
SELECT *
FROM posts
WHERE fecha_publicacion = (
	SELECT MAX(fecha_publicacion)
	FROM posts
);
