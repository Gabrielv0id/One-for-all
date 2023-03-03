SELECT CONCAT(us.nome, ' ',us.sobrenome) AS pessoa_usuaria, COUNT(his.usuario_id) AS musicas_ouvidas, ROUND(SUM(ca.duracao_segundos)/60, 2) as total_minutos
FROM SpotifyClone.usuario AS us
INNER JOIN SpotifyClone.historico AS his
ON his.usuario_id = us.usuario_id
INNER JOIN SpotifyClone.cancao AS ca
ON his.cancao_id = ca.cancao_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;