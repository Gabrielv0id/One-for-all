SELECT COUNT(his.usuario_id) as musicas_no_historico
FROM SpotifyClone.historico AS his
INNER JOIN SpotifyClone.usuario AS us
ON his.usuario_id = us.usuario_id
WHERE CONCAT(us.nome, ' ', us.sobrenome) = 'Barbara Liskov';