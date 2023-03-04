SELECT CONCAT(us.nome, ' ',us.sobrenome) AS pessoa_usuaria, IF (MAX(YEAR(his.data_reproducao)) >= 2021, 'Ativa', 'Inativa')  as status_pessoa_usuaria
FROM SpotifyClone.usuario AS us
INNER JOIN SpotifyClone.historico AS his
ON his.usuario_id = us.usuario_id
GROUP BY pessoa_usuaria 
ORDER BY pessoa_usuaria;