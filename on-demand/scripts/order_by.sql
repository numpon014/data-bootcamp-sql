-- Order By + Limit
-- desc = descending order
SELECT genres.name,
       COUNT(*)
FROM genres
         JOIN tracks ON genres.genreid = tracks.genreid
GROUP BY genres.name
ORDER BY COUNT(*) DESC LIMIT 5;