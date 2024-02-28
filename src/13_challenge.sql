-- Active: 1709075183068@@localhost@3306@Trybefy
SELECT
  artists.name 'Artista'
FROM albums
INNER JOIN artists ON albums.artist_id = artists.id
GROUP BY artists.name
HAVING COUNT(*) >= 3
ORDER BY artists.name;