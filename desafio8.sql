SELECT
art.artista_nome AS artista,
alb.album_nome AS album
FROM SpotifyClone.artista AS art
INNER JOIN SpotifyClone.album AS alb
ON alb.artista_id = art.artista_id
WHERE art.artista_nome = 'Elis Regina';