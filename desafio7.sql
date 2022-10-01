SELECT
	ar.artista AS artista,
    a.album AS album,
    COUNT(usuarios_usuario_id) AS seguidores
    FROM SpotifyClone.artistas AS ar
INNER JOIN 
	SpotifyClone.albuns AS a
ON ar.artista_id = a.artistas_artista_id
INNER JOIN 
	SpotifyClone.seguindo_artistas AS s
ON s.artistas_artista_id = ar.artista_id
GROUP BY a.album
ORDER BY seguidores DESC,
		artista,
        album;
