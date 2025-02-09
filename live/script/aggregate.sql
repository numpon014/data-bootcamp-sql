-- Aggregate functions are functions that take a collection of values and return a single value
-- count, sum, avg, min, max

-- Count all rows in this table
SELECT
    Country as country,
    COUNT(*)
FROM customers
GROUP BY country;

-- Having Clause with Aggregate Function
-- The HAVING clause is used to filter the results of a GROUP BY clause based on specified conditions.
SELECT
    Country as country,
    COUNT(*) as n_customers
FROM customers
GROUP BY country
HAVING COUNT(*) >= 5;


-- Having Clause with Aggregate Function and WHERE Clause
-- Using WHERE customer <> 'USA' to filter the result is faster than using HAVING clause to filter the result
-- Because WHERE clause is executed before GROUP BY and HAVING clause is executed after GROUP BY
SELECT
    Country as country,
    COUNT(*) as n_customers
FROM customers
WHERE country <> 'USA'
GROUP BY country
HAVING COUNT(*) >= 5;


-- JOIN - Aggregate Function (Count)
SELECT
    t2.Name as genres_name,
    COUNT(t1.name),
    AVG(Bytes) as avg_bytes,
    SUM(Bytes) as total_bytes,
    MAX(Bytes) as max_bytes,
    MIN(Bytes) as min_bytes
FROM tracks t1
JOIN genres t2 ON t1.GenreId = t2.GenreId
GROUP BY 1