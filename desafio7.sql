SELECT
art.artista_nome AS artista,
alb.album_nome AS album,
COUNT(seg.artista_id) AS seguidores
FROM SpotifyClone.artista AS art
INNER JOIN SpotifyClone.album AS alb ON alb.artista_id = art.artista_id
INNER JOIN SpotifyClone.seguindo AS seg ON seg.artista_id = art.artista_id
GROUP BY alb.album_id
ORDER BY seguidores DESC, artista, album;