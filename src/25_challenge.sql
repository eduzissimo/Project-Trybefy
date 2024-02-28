-- Active: 1709075183068@@localhost@3306@Trybefy
SELECT
  a.title 'Álbum',
  COUNT(hps.song_id) 'Quantidade de músicas reproduzidas'
FROM albums a
INNER JOIN songs s ON a.id = s.album_id
INNER JOIN history_play_songs hps ON s.id = hps.song_id
GROUP BY a.title
ORDER BY COUNT(hps.song_id) DESC, a.title
LIMIT 5;