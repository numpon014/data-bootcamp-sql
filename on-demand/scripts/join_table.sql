-- join table albums and artists
SELECT *
FROM artists
         JOIN albums
              ON artists.ArtistId = albums.ArtistId;

-- Example Join in the video
SELECT
	art.artistid,
	art.name,
	alb.title,
	tra.name,
	tra.composer
FROM artists AS art
JOIN albums  AS alb
	ON art.artistid = alb.artistid
JOIN tracks  AS tra
  ON tra.albumid = alb.albumid
-- WHERE is used after JOINs completed
WHERE art.name = 'Aerosmith';

-- Random Sampling Example
-- USE RANDOM() function to get random rows
SELECT name, RANDOM() FROM tracks
ORDER BY RANDOM()
LIMIT 10;