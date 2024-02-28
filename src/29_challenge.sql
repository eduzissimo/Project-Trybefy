-- Active: 1709075183068@@localhost@3306@Trybefy
SELECT
  art.name 'Artista'
FROM artists art
INNER JOIN artists_followers af ON art.id = af.artist_id
GROUP BY art.name
ORDER BY COUNT(af.user_id) DESC
LIMIT 1;