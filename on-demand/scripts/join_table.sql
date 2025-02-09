-- join table albums and artists
SELECT *
FROM artists
         JOIN albums
              ON artists.ArtistId = albums.ArtistId;