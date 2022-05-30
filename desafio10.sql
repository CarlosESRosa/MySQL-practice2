SELECT ms.musica AS `nome`, COUNT(*) AS `reproducoes`
FROM SpotifyClone.musicas AS ms
INNER JOIN SpotifyClone.reproducoes AS re ON ms.musica_id = re.musica_id
INNER JOIN SpotifyClone.usuarios AS us ON us.usuario_id = re.usuario_id
WHERE us.plano_id = 1 OR us.plano_id = 4
GROUP BY re.musica_id ORDER BY `reproducoes` DESC, `nome`;