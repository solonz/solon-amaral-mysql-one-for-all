SELECT u.usuario_nome AS usuario,
COUNT(h.musica_id) AS qt_de_musicas_ouvidas,
ROUND((SUM(m.musica_duracao)) / 60, 2) AS total_minutos
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico AS h ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.musica AS m ON m.musica_id = h.musica_id
GROUP BY u.usuario_nome
ORDER BY u.usuario_nome;