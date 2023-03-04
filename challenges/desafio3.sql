SELECT u.user_name AS pessoa_usuaria, COUNT(h.user_id) AS musicas_ouvidas, ROUND(SUM(s.duration)/60, 2) AS total_minutos
FROM SpotifyClone.users AS u 
INNER JOIN SpotifyClone.history AS h 
ON u.user_id = h.user_id
INNER JOIN SpotifyClone.singles as s
ON h.single_id = s.single_id
GROUP BY h.user_id
ORDER BY u.user_name;