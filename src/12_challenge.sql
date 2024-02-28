-- Active: 1709075183068@@localhost@3306@Trybefy
SELECT
  artists.name 'Artista',
  COUNT(*) 'Quantidade de álbuns'
FROM albums
INNER JOIN artists ON albums.artist_id = artists.id
GROUP BY artists.name
ORDER BY COUNT(*) DESC, artists.name;