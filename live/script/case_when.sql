-- CASE WHEN
-- The CASE WHEN statement in SQL is used to implement conditional logic within a query.
-- It allows you to return different values based on specified conditions, similar to an if-else statement in programming languages.

-- Syntax: SELECT
SELECT FirstName,
       Company,
       CASE
           WHEN Company IS NULL THEN 'No Company'
           ELSE Company
       END as clean_company
FROM customers;


-- CASE WHEN with Multiple Conditions
SELECT FirstName as first_name,
       Company as company,
       Country as country,
       CASE
           WHEN Country IN ('USA', 'Canada') THEN 'North America'
           WHEN Country IN ('France', 'Germany', 'UK') THEN 'Europe'
           ELSE 'Other Region'
           END as region
FROM customers
ORDER BY 4;


-- CASE WHEN with Multiple Conditions and Multiple Columns
SELECT FirstName as first_name,
       Company   as company,
       Country   as country,
       CASE
           WHEN company IS NULL THEN 'B2C'
           WHEN company IS NOT NULL THEN 'B2B'
           ELSE 'Other'
           END   as segment,
       CASE
           WHEN Country IN ('USA', 'Canada') THEN 'North America'
           WHEN Country IN ('France', 'Germany', 'UK') THEN 'Europe'
           ELSE 'Other Region'
           END   as region
FROM customers
ORDER BY 4;
