SELECT ar.artist_name AS artista, al.album_name AS album
FROM artists AS ar
INNER JOIN albums AS al
ON ar.artist_id = al.artist_id
WHERE ar.artist_name = 'Elis Regina'
ORDER BY al.album_name;
