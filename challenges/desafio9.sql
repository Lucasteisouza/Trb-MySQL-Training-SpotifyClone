SELECT COUNT(h.single_id) AS musicas_no_historico
FROM history AS h
INNER JOIN users AS u
ON u.user_id = h.user_id
WHERE u.user_name = "Barbara Liskov";