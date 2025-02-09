-- Aggregates functions are functions that take a collection of values and return a single value
-- Aggregates do not consider NULL values
-- Aggregate function has 5 functions follow below:
    -- COUNT() - Returns the number of rows in the table
    -- SUM() - Returns the sum of the values in the column
    -- AVG() - Returns the average of the values in the column
    -- MIN() - Returns the minimum value in the column
    -- MAX() - Returns the maximum value in the column

-- JOIN - Aggregate Function (Count)
SELECT
    ge.Name as genres_name,
    COUNT(*) as total_tracks
FROM artists as ar
         JOIN albums as al
              ON ar.ArtistId = al.ArtistId
         JOIN tracks as tr
              ON al.AlbumId = tr.AlbumId
         JOIN genres as ge
              ON tr.GenreId = ge.GenreId
WHERE ge.name in ('Jazz', 'Pop', 'Rock')
GROUP BY 1
ORDER BY 2 DESC;

-- JOIN Multiple Tables with WHERE Clause and Group By
SELECT
    ar.name as artist_name,
    ge.Name as genres_name,
    COUNT(*) as total_tracks
FROM artists as ar
         JOIN albums as al
              ON ar.ArtistId = al.ArtistId
         JOIN tracks as tr
              ON al.AlbumId = tr.AlbumId
         JOIN genres as ge
              ON tr.GenreId = ge.GenreId
WHERE ge.name in ('Jazz', 'Pop', 'Rock')
GROUP BY 1,2;

-- Count all rows in this table
-- Aggregates do not consider NULL values
SELECT
    COUNT(*) as n_customers,
    COUNT(FirstName),
    COUNT(Company),
    COUNT(Email),
    COUNT(Address)
FROM customers;