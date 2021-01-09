-- Taer todos los usuarios
SELECT	*
FROM usuarios;
   
-- Todos los usuarios tengan o no  un post relacionado
SELECT	*
FROM	usuarios 
	LEFT JOIN posts on usuarios.id = posts.usuario_id;
    
-- Todos los usuarios que no han hecho post    
SELECT	*
FROM	usuarios 
	LEFT JOIN posts on usuarios.id = posts.usuario_id
WHERE	posts.usuario_id IS NULL;

-- Todos los post esten o no asociados con un usuario
SELECT	*
FROM	usuarios 
	RIGHT JOIN posts on usuarios.id = posts.usuario_id;
    
 -- Los post que no estan asociados con un usuario    
SELECT	*
FROM	usuarios 
	RIGHT JOIN posts on usuarios.id = posts.usuario_id
WHERE	posts.usuario_id IS NULL;

 -- Todos los usuarios que sí hayan hecho posts, con su respectivo post
SELECT	*
FROM	usuarios 
	INNER JOIN posts on usuarios.id = posts.usuario_id;
    
 -- Conjunto universo UNION (algunas BD = FULL OTER JOIN)     
SELECT	*
FROM		usuarios 
	LEFT JOIN posts   ON usuarios.id = posts.usuario_id
UNION 
SELECT	*
FROM		usuarios 
	RIGHT JOIN posts ON usuarios.id = posts.usuario_id;

 -- Los usuarios que no hayan hecho un post, junto con los post que no tiene usuario    
SELECT	*
FROM	usuarios 
	LEFT JOIN posts on usuarios.id = posts.usuario_id
WHERE	posts.usuario_id IS NULL
UNION
SELECT	*
FROM	usuarios 
	RIGHT JOIN posts on usuarios.id = posts.usuario_id
WHERE	posts.usuario_id IS NULL;