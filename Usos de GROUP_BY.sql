-- Agrupar los count por los status
SELECT	estatus, COUNT(*) AS post_number
FROM		posts
GROUP BY estatus;

-- Agrupar cuantos post se hicieron por cada año
SELECT	YEAR(fecha_publicacion) AS post_year, COUNT(*) AS post_number
FROM		posts
GROUP BY post_year;

-- Agrupar cuantos posts se hicieorn por cada mes
SELECT	MONTHNAME(fecha_publicacion) AS post_month, COUNT(*) AS post_number
FROM		posts
GROUP BY post_month;

-- Agrupar cuantos post se hicieorn por cada mes y agruparlos por estatus
SELECT	estatus, MONTHNAME(fecha_publicacion) AS post_date, COUNT(*) AS post_number
FROM		posts
GROUP BY estatus, post_date;
