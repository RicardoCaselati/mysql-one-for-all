SELECT
	usuarios.usuario AS usuario,
	COUNT(historico_de_reproducoes.cancoes_cancao_id) AS qt_de_musicas_ouvidas,
    SUM(ROUND(cancoes.duracao_segundos/60, 2)) AS total_minutos
    FROM SpotifyClone.historico_de_reproducoes
INNER JOIN 
	SpotifyClone.usuarios
ON usuarios.usuario_id = historico_de_reproducoes.usuarios_usuario_id
INNER JOIN
	SpotifyClone.cancoes
ON cancoes.cancao_id = historico_de_reproducoes.cancoes_cancao_id
GROUP BY usuarios.usuario
ORDER BY usuarios.usuario;
