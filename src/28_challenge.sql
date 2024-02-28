-- Active: 1709075183068@@localhost@3306@Trybefy
SELECT
  u.full_name 'Pessoa usuária',
  COUNT(af.artist_id) 'Artistas que segue'
FROM users u
LEFT JOIN artists_followers af ON u.id = af.user_id
GROUP BY u.full_name
ORDER BY u.full_name;