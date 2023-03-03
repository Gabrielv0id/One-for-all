SELECT COUNT(t1.nome) as cancoes, COUNT(DISTINCT t2.nome) as artistas, COUNT(DISTINCT t3.nome) as albuns
FROM SpotifyClone.cancao AS t1
INNER JOIN SpotifyClone.album AS t3
ON t1.album_id = t3.album_id
INNER JOIN SpotifyClone.artista AS t2
ON t1.artista_id = t2.artista_id;