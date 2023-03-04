SELECT MIN(pl.valor) as faturamento_minimo, MAX(pl.valor) as faturamento_maximo, ROUND(AVG(pl.valor), 2) as faturamento_medio, SUM(pl.valor) as faturamento_total
FROM SpotifyClone.plano as pl
INNER JOIN SpotifyClone.usuario AS us
ON us.plano_id = pl.plano_id;