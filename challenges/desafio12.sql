SELECT ar.nome AS artista,
CASE
	WHEN count(fav.cancao_id) >= 5 THEN 'A'
    WHEN count(fav.cancao_id) >= 3 THEN 'B'
    WHEN count(fav.cancao_id) >= 1 THEN 'C'
    ELSE '-'
  END AS ranking
FROM SpotifyClone.artista AS ar
INNER JOIN SpotifyClone.cancao AS ca
ON ar.artista_id = ca.artista_id
LEFT JOIN SpotifyClone.favoritos AS fav
ON ca.cancao_id = fav.cancao_id
GROUP BY artista
ORDER BY count(fav.cancao_id) DESC, artista;