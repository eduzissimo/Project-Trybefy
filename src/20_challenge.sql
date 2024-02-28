-- Active: 1709075183068@@localhost@3306@Trybefy
SELECT
  artists.name 'Artista',
  albums.title 'Álbum',
  songs.title 'Música'
FROM songs
INNER JOIN albums ON songs.album_id = albums.id
INNER JOIN artists ON albums.artist_id = artists.id
WHERE artists.name != 'The Beatles'
ORDER BY artists.name, albums.title, songs.title;