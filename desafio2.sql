SELECT 
  COUNT(DISTINCT m.musica) AS 'cancoes',
  COUNT(DISTINCT art.artista_id) AS 'artistas',
  COUNT(DISTINCT alb.album) AS 'albuns'
FROM SpotifyClone.musicas AS m,
  SpotifyClone.artistas AS art,
  SpotifyClone.albuns AS alb;