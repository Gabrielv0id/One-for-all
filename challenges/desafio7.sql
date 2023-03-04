SELECT ar.nome AS artista, al.nome AS album, COUNT(seg.usuario_id) as pessoas_seguidoras
FROM SpotifyClone.artista AS ar
INNER JOIN SpotifyClone.album AS al
ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguindo_artista AS seg
ON ar.artista_id = seg.artista_id
GROUP BY  artista, album
ORDER BY pessoas_seguidoras DESC, artista, album;