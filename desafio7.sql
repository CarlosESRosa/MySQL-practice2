SELECT 
	ar.artista_nome AS `artista`,
  al.album AS `album`,
  COUNT(*) AS `seguidores`
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguindo_artista AS se ON se.artista_id = ar.artista_id
GROUP BY ar.artista_id, al.album ORDER BY seguidores DESC, ar.artista_nome, al.album;