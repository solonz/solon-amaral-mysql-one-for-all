SELECT musica_nome AS cancao,
COUNT(historico.musica_id) AS reproducoes
FROM SpotifyClone.musica
INNER JOIN SpotifyClone.historico
ON musica.musica_id = historico.musica_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
