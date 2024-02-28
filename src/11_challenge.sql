-- Active: 1709075183068@@localhost@3306@Trybefy
SELECT
  albums.title 'Album',
  albums.release_year 'Ano de lançamento',
  artists.name 'Artista'
FROM albums
INNER JOIN artists ON albums.artist_id = artists.id
WHERE albums.title LIKE '%you%'
ORDER BY albums.release_year;