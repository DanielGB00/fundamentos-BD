-- Posts ordenados por fecha de publicación de manera ascendente
SELECT	*
FROM		posts
ORDER BY fecha_publicacion ASC;

-- Posts ordenados por fecha de publicación de manera descendente
SELECT	*
FROM		posts
ORDER BY fecha_publicacion DESC;

-- Posts ordenados por titulo de manera ascendente 
SELECT	*
FROM		posts
ORDER BY titulo ASC;

-- Posts ordenados por titulo de manera descendente
SELECT	*
FROM		posts
ORDER BY titulo DESC;

-- Posts ordenados por usuario_id de manera ascendente , los 5 primeros
SELECT	*
FROM		posts
ORDER BY usuario_id ASC
LIMIT 5;

-- Cuantos posts hay por mes y estatus, ordenados por mes (ALFABETICAMENTE)
SELECT	MONTHNAME(fecha_publicacion) AS post_month, estatus, COUNT(*) AS post_quantity
FROM		posts
GROUP BY estatus, post_month
ORDER BY post_month;

-- !ERROR: WHERE NO RECONOCE POST QUANTITY PORQUE ESTE GENERA POSTERIOR AL GROUP BY Y WHERE NO FUNCIONA FUERA DE GROUP BY
SELECT	MONTHNAME(fecha_publicacion) AS post_month, estatus, COUNT(*) AS post_quantity
FROM		posts
WHERE post_quantity > 1
GROUP BY estatus, post_month
ORDER BY post_month;

-- USAMOS HAVING POSTERIOR A GROUP BY PARA OBTENER EL RESULTAOD DESEADO
SELECT	MONTHNAME(fecha_publicacion) AS post_month, estatus, COUNT(*) AS post_quantity
FROM		posts
GROUP BY estatus, post_month
HAVING post_quantity > 1
ORDER BY post_month;