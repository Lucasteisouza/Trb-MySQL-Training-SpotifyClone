SELECT al.album_name AS album, COUNT(f.single_id) AS favoritadas
FROM SpotifyClone.albums AS al
INNER JOIN SpotifyClone.singles AS s
ON s.album_id = al.album_id
INNER JOIN SpotifyClone.favorites AS f
ON f.single_id = s.single_id
GROUP BY al.album_name
ORDER BY favoritadas DESC, album
LIMIT 3;