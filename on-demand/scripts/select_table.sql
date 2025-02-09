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

-- select columns and do basic calculation
SELECT name,
       ROUND(Milliseconds / 60000.0, 2)  AS minutes,
       ROUND(Bytes / (1024 * 1024.0), 2) AS MB
FROM tracks;


-- CASE is like IF-ELSE in Google Sheets
SELECT
	company,
	CASE
		WHEN company IS NOT NULL THEN 'Corporate'
		ELSE 'End Customer'
	END AS segment
FROM customers;

-- STRFTIME is a specific function for SQLite
-- CAST is used to convert data type
SELECT
	invoicedate,
	CAST(STRFTIME('%Y', invoicedate)AS INT)  AS year,
	CAST(STRFTIME('%m', invoicedate)AS INT)  AS month,
	CAST(STRFTIME('%d', invoicedate)AS INT)  AS day,
	STRFTIME('%Y-%m-%d', invoicedate) AS date,
	STRFTIME('%Y-%m', invoicedate) AS monthid
FROM invoices
WHERE year = 2010;