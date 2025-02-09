-- Inner Join
SELECT *
FROM artists
         JOIN albums
              ON artists.artistid = albums.artistid;


-- Inner Join with alias and where clause
-- 1. Select all columns from artists and albums
-- 2. Filter by artist name
SELECT A.artistid,
       A.Name  AS artistName,
       B.Title AS albumName,
       C.Name  AS trackName
FROM artists A
         INNER JOIN albums B ON A.ArtistId = B.ArtistId
         INNER JOIN tracks C ON B.AlbumId = C.AlbumId
WHERE A.Name = 'Aerosmith';


-- Inner Join with multiple conditions and aggregate functions
-- Group by country
-- Order by number of customers
SELECT customers.country,
       COUNT(DISTINCT customers.customerid) AS n_customers,
       COUNT(invoices.total)                AS n_transactions,
       SUM(invoices.total)                  AS total_revenue
FROM customers
         JOIN invoices
              ON customers.customerid = invoices.customerid
GROUP BY 1
ORDER BY 2 DESC;