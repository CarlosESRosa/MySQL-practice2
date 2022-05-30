SELECT ms.musica AS `cancao`, COUNT(*) AS `reproducoes`
FROM SpotifyClone.musicas AS ms
INNER JOIN SpotifyClone.reproducoes AS re ON ms.musica_id = re.musica_id
GROUP BY ms.musica, re.musica_id 
ORDER BY COUNT(*) DESC, ms.musica LIMIT 2;