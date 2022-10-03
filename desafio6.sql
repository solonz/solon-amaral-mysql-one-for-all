SELECT
CAST(MIN(plano.plano_valor) AS DECIMAL(5, 2)) AS faturamento_minimo,
CAST(MAX(plano.plano_valor) AS DECIMAL(5, 2)) AS faturamento_maximo,
CAST(ROUND(AVG(plano.plano_valor), 2) AS DECIMAL(5, 2)) AS faturamento_medio,
CAST(ROUND(SUM(plano.plano_valor), 2) AS DECIMAL(5, 2)) AS faturamento_total
FROM SpotifyClone.plano AS plano
INNER JOIN SpotifyClone.plano AS p ON p.plano_id = plano.plano_id;