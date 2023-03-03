SELECT u.user_name AS pessoa_usuaria, COUNT(h.user_id) AS musica_ouvidas, SUM(s.duration)/60 AS total_minutos
FROM users AS u 
INNER JOIN history AS h 
ON u.user_id = h.user_id
INNER JOIN singles as s
ON h.single_id = s.single_id
GROUP BY h.user_id
ORDER BY u.user_name;