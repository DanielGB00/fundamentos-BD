-- Traer los post donde id sea menor a 50
SELECT	*
FROM		posts
WHERE	id	< 50;

-- Taer los posts donde estatos sea inactivo
SELECT	*
FROM		posts
WHERE	estatus = 'Inactivo';

-- Traer los posts donde en el título esté la palabra escandalo
SELECT	*
FROM		posts
WHERE	titulo LIKE '%escandalo%';

-- Traer los posts donde fecha de publicación sea mayor a 2025-01-01
SELECT	*
FROM		posts
WHERE	fecha_publicacion > '2025-01-01';

-- Traer los posts donde fecha de publicación este entre 2023-01-01 y 2025-12-31
SELECT	*
FROM		posts
WHERE	fecha_publicacion BETWEEN '2023-01-01' AND '2025-12-31';

-- Traer los posts donde fecha de publicación este entre 2023 y 2024
SELECT	*
FROM		posts
WHERE	YEAR(fecha_publicacion) BETWEEN '2023' AND '2024';

-- Traer los posts donde fecha de publicación el mes de publicación sea 04
SELECT	*
FROM		posts
WHERE	MONTH(fecha_publicacion) = '04';

-- Traer los posts donde el usuario sean NOT NULL
SELECT	*
FROM		posts
WHERE	usuario_id IS NOT NULL;

-- Traer los posts donde el usuario sean NULL
SELECT	*
FROM		posts
WHERE	usuario_id IS NULL;

-- Podemos a esto concatenar cuantos AND necesitemos
SELECT	*
FROM		posts
WHERE	usuario_id IS NULL;
	AND id < 50
	AND categoria_id =2
	AND YEAR(fecha_publicacion)='2050'