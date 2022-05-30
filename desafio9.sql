SELECT COUNT(*) AS `quantidade_musicas_no_historico`
FROM SpotifyClone.usuarios AS us
INNER JOIN SpotifyClone.reproducoes AS re ON us.usuario_id = re.usuario_id
WHERE us.usuario = 'Bill';