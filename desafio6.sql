SELECT 
	ROUND(MIN(pl.valor_plano), 2) AS `faturamento_minimo`,
  ROUND(MAX(pl.valor_plano), 2) AS `faturamento_maximo`,
  ROUND(AVG(pl.valor_plano), 2) AS `faturamento_medio`,
  ROUND(SUM(pl.valor_plano), 2) AS `faturamento_total`
FROM SpotifyClone.planos AS pl
INNER JOIN SpotifyClone.usuarios AS us ON us.plano_id = pl.plano_id;