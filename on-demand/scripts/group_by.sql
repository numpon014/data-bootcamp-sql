-- Aggregate functions with GROUP BY clause
SELECT genres.name, COUNT(*) AS count_songs
FROM genres, tracks
WHERE genres.genreid = tracks.genreid
GROUP BY genres.name;