SELECT al.nome AS album, COUNT(fav.cancao_id) AS favoritadas
FROM SpotifyClone.album as al
INNER JOIN SpotifyClone.cancao as ca
ON al.album_id = ca.album_id
INNER JOIN SpotifyClone.favoritos as fav
ON ca.cancao_id = fav.cancao_id
GROUP BY album
ORDER BY favoritadas DESC , album
LIMIT 3;
