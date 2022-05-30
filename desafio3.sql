SELECT 
	us.usuario AS `usuario`,
  COUNT(*) AS `qtde_musicas_ouvidas`,
  ROUND(SUM(mu.duracao_segundos)/60, 2) AS `total_minutos`
FROM SpotifyClone.usuarios AS us
INNER JOIN SpotifyClone.reproducoes AS re ON us.usuario_id = re.usuario_id
INNER JOIN SpotifyClone.musicas AS mu ON re.musica_id = mu.musica_id
GROUP BY us.usuario_id ORDER BY us.usuario;
