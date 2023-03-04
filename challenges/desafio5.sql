SELECT (ca.nome) AS cancao, COUNT(his.usuario_id) as reproducoes
FROM SpotifyClone.cancao AS ca
INNER JOIN SpotifyClone.historico AS his
ON his.cancao_id = ca.cancao_id
GROUP BY cancao 
ORDER BY reproducoes DESC, cancao 
LIMIT 2;