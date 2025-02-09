-- Filter data with WHERE clause
SELECT * FROM customers
WHERE country = 'USA';

SELECT * FROM customers
WHERE UPPER(country) = 'USA';

-- Filter data with multiple conditions
SELECT * FROM customers
WHERE country = 'USA' AND state = 'CA';

SELECT * FROM customers
WHERE country = 'USA' OR country = 'Canada';

SELECT * FROM customers
WHERE NOT (country = 'USA' OR country = 'Canada');