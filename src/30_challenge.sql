-- Active: 1709075183068@@localhost@3306@Trybefy
SELECT
  art.name 'Artista',
  COUNT(af.user_id) 'Total de seguidores'
FROM artists art
LEFT JOIN artists_followers af ON art.id = af.artist_id
GROUP BY art.name
HAVING COUNT(af.user_id) < 5
ORDER BY art.name;