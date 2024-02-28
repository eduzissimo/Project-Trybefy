-- Active: 1709075183068@@localhost@3306@Trybefy
SELECT
  albums.title 'Álbum',
  SUM(songs.duration_in_seconds) 'Duração'
FROM albums
INNER JOIN songs ON albums.id = songs.album_id
GROUP BY albums.title
ORDER BY SUM(songs.duration_in_seconds) DESC;