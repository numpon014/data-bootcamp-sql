-- Join 2 Tables,
-- Primary Key = Foreign Key
SELECT *
FROM artists as ar
         JOIN albums as al
              ON ar.ArtistId = al.ArtistId
WHERE ar.name LIKE 'J%';


-- Join by USING
-- In this case, we don't need to specify the column name
-- The column name is the same in both tables
SELECT *
FROM artists as ar
         JOIN albums as al
              USING (ArtistId)
WHERE ar.name LIKE 'J%';


-- JOIN Multiple Tables
SELECT
    ar.Name as artist_name,
    al.Title as album_title,
    tr.Name as track_name,
    ge.Name as genre_name
FROM artists as ar
         JOIN albums as al
              ON ar.ArtistId = al.ArtistId
         JOIN tracks as tr
              ON al.AlbumId = tr.AlbumId
         JOIN genres as ge
              ON tr.GenreId = ge.GenreId



-- JOIN Multiple Tables with WHERE Clause
SELECT
    ar.Name as artist_name,
    al.Title as album_title,
    tr.Name as track_name,
    ge.Name as genre_name
FROM artists as ar
         JOIN albums as al
              ON ar.ArtistId = al.ArtistId
         JOIN tracks as tr
              ON al.AlbumId = tr.AlbumId
         JOIN genres as ge
              ON tr.GenreId = ge.GenreId
WHERE ge.name in ('Jazz', 'Pop', 'Rock');
