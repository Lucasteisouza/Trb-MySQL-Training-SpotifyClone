
SELECT COUNT(S.single_id) AS cancoes, COUNT(DISTINCT Al.artist_id) AS artistas, COUNT(DISTINCT Al.album_id) AS albuns
FROM SpotifyClone.singles as S
INNER JOIN SpotifyClone.albums as Al
ON S.album_id = Al.album_id;