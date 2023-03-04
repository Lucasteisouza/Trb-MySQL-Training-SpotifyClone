SELECT user_name AS pessoa_usuaria, IF(YEAR (MAX(h.listen_date)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM SpotifyClone.users AS u 
INNER JOIN SpotifyClone.history AS h
ON u.user_id = h.user_id
GROUP BY u.user_id
ORDER BY u.user_name;