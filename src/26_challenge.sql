-- Active: 1709075183068@@localhost@3306@Trybefy
SELECT
  art.name 'Artista',
  COUNT(hps.song_id) 'Quantidade de músicas reproduzidas'
FROM artists art
INNER JOIN albums alb ON art.id = alb.artist_id
INNER JOIN songs s ON alb.id = s.album_id
INNER JOIN history_play_songs hps ON s.id = hps.song_id
GROUP BY art.name
HAVING COUNT(hps.song_id) > 10
ORDER BY art.name;

