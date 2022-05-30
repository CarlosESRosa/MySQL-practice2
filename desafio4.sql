SELECT us.usuario,
CASE
	WHEN MAX(YEAR(re.data_de_reproducao)) >= 2021 THEN 'Usuário ativo'
  ELSE 'Usuário inativo'
END AS `condicao_usuario`
FROM SpotifyClone.usuarios AS us
INNER JOIN SpotifyClone.reproducoes AS re ON us.usuario_id = re.usuario_id GROUP BY us.usuario;