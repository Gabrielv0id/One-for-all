SELECT 
CASE 
	WHEN us.idade <= 30 THEN 'Até 30 anos'
	WHEN us.idade < 61 THEN 'Entre 31 e 60 anos'
        ELSE 'Maior de 60 anos'
    END AS faixa_etaria,
COUNT(DISTINCT us.usuario_id) AS total_pessoas_usuarias,
COUNT(fav.cancao_id) AS total_favoritadas
FROM SpotifyClone.usuario AS us
LEFT JOIN SpotifyClone.favoritos AS fav 
ON fav.usuario_id = us.usuario_id
GROUP BY faixa_etaria
ORDER BY faixa_etaria; 