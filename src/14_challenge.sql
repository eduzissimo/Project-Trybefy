-- Active: 1709075183068@@localhost@3306@Trybefy
SELECT
  artists.name AS 'Artista',
  GROUP_CONCAT(albums.title) AS 'Álbuns'
FROM albums
INNER JOIN artists ON albums.artist_id = artists.id
GROUP BY artists.name
ORDER BY artists.name;