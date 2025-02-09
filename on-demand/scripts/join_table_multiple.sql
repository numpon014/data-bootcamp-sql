-- join tables using WHERE clause
SELECT *
FROM artists,
     albums
WHERE artists.artistid = albums.artistid;

-- using alias
SELECT *
FROM artists A,
     albums B
WHERE A.artistid = B.artistid;