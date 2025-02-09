-- Filter groups
SELECT genres.name,
       COUNT(*) AS count_songs
FROM genres,
     tracks
WHERE genres.genreid = tracks.genreid
  AND genres.name <> 'Rock'
GROUP BY genres.name
HAVING COUNT(*) >= 100;