-- Active: 1709075183068@@localhost@3306@Trybefy
SELECT
  artists.name 'Artista',
  COUNT(songs.title) 'Quantidade de músicas'
FROM songs
INNER JOIN albums ON songs.album_id = albums.id
INNER JOIN artists ON albums.artist_id = artists.id
GROUP BY artists.name
ORDER BY COUNT(songs.title) DESC, artists.name
LIMIT 3;