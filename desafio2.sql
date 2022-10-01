SELECT
	COUNT(DISTINCT(cancao)) AS cancoes,
	COUNT(DISTINCT(artista)) AS artistas, 
	COUNT(DISTINCT(album)) AS albuns 
	FROM SpotifyClone.albuns
INNER JOIN 
	SpotifyClone.artistas
ON artistas.artista_id = albuns.artistas_artista_id
INNER JOIN
	SpotifyClone.cancoes
ON 
	albuns.album_id = cancoes.albuns_album_id;
    