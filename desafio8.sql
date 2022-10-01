SELECT
	ar.artista AS artista,
    a.album AS album
    FROM SpotifyClone.artistas AS ar
INNER JOIN 
	SpotifyClone.albuns AS a
ON ar.artista_id = a.artistas_artista_id
WHERE artista = 'Elis Regina'
GROUP BY a.album
ORDER BY album;
