SELECT usuario_nome AS usuario, 
IF(MAX(YEAR(h.historico_data)) >= 2021, "Usuário ativo", "Usuário inativo") AS status_usuario
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico AS h
ON h.usuario_id = u.usuario_id
GROUP BY u.usuario_nome
ORDER BY u.usuario_nome;
