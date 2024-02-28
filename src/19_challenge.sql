-- Active: 1709075183068@@localhost@3306@Trybefy
SELECT
  songs.title 'Título',
  duration_in_seconds 'Duração',
  albums.title 'Álbum'
FROM songs
INNER JOIN albums ON songs.album_id = albums.id
WHERE duration_in_seconds BETWEEN 300 AND 480
ORDER BY duration_in_seconds;