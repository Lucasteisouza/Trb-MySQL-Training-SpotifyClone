SELECT artist_name AS artista, al.album_name AS album, COUNT(f.artist_id) AS pessoas_seguidoras
FROM SpotifyClone.artists AS ar
INNER JOIN SpotifyClone.albums AS al
ON ar.artist_id = al.artist_id
INNER JOIN SpotifyClone.follows AS f
ON ar.artist_id = f.artist_id
GROUP BY al.album_id
ORDER BY pessoas_seguidoras DESC, artista, album;