SELECT CONCAT(FORMAT(MIN(p.value), 2)) AS faturamento_minimo,
	CONCAT(ROUND(MAX(p.value), 2)) AS faturamento_maximo,
    CONCAT(ROUND(AVG(p.value), 2)) AS faturamento_medio,
    CONCAT(ROUND(SUM(p.value), 2)) AS faturamento_total
FROM SpotifyClone.plans AS p
INNER JOIN SpotifyClone.users AS u
ON p.plan_id = u.plan_id;