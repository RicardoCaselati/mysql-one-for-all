SELECT
	c.cancao AS nome,
    COUNT(h.data_reproducao) AS reproducoes
    FROM SpotifyClone.historico_de_reproducoes AS h
INNER JOIN 
	SpotifyClone.usuarios AS u
ON u.usuario_id = h.usuarios_usuario_id
INNER JOIN 
	SpotifyClone.cancoes AS c
ON c.cancao_id = h.cancoes_cancao_id
WHERE u.planos_plano_id = 1 
	OR u.planos_plano_id = 4
GROUP BY cancao
ORDER BY cancao;
