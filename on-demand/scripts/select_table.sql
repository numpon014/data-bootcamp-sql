-- select all columns from a table
SELECT * FROM customers;

-- we can use select to do basic calculation
SELECT 10 + 20;
SELECT 10 * 2;
SELECT 10 / 2;
SELECT 10 - 5;


-- select columns from table
SELECT
	firstname,
	lastname,
	country
FROM customers;

-- create/ transform columns
SELECT
	firstname,
	lastname,
	firstname || ' ' || lastname AS fullname,
	LOWER(firstname) || '@company.com' AS email
FROM customers;