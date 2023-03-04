SELECT s.single_name AS cancao, COUNT(h.single_id) AS reproducoes
FROM SpotifyClone.singles AS s
INNER JOIN SpotifyClone.history AS h
ON s.single_id = h.single_id
GROUP BY s.single_name
ORDER BY reproducoes DESC, s.single_name
LIMIT 2;