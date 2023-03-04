SELECT ar.nome AS artista, al.nome AS album
FROM SpotifyClone.artista AS ar
INNER JOIN SpotifyClone.album AS al
ON ar.artista_id = al.artista_id
WHERE  ar.nome = 'Elis Regina';
        