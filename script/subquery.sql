-- subqueries are queries that are nested within another query
-- they are used to return a single value or a set of values that are used in the main query

-- nested SELECT statement
SELECT
    FirstName as first_name,
    LastName as last_name,
    Country as country
FROM (SELECT *
      FROM customers)
WHERE Country = 'USA';


-- WITH clause allows you to define one or more subqueries that can be referenced within the main query
WITH inner_query AS (
    SELECT * FROM customers
)

SELECT
    FirstName as first_name,
    LastName as last_name,
    Country as country
FROM inner_query
WHERE Country = 'USA';


-- WITH clause with UNION
WITH inner_query AS (
    SELECT * FROM customers
)

SELECT
    FirstName as first_name,
    LastName as last_name,
    Country as country
FROM inner_query
WHERE Country = 'USA'

UNION
SELECT
    FirstName as first_name,
    LastName as last_name,
    Country as country
FROM inner_query
WHERE Country = 'Canada';


-- WITH clause with JOIN
WITH usa_customers AS (SELECT *
                       FROM customers
                       WHERE Country = 'USA'),
     invoice_y2009 AS (SELECT *
                       FROM invoices
                       WHERE InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31')

SELECT *
FROM usa_customers t1
         JOIN invoice_y2009 t2
              ON t1.CustomerId = t2.CustomerId;

-- WITH clause with JOIN with Aggregate Function
WITH usa_customers AS (SELECT *
                       FROM customers
                       WHERE Country = 'USA'),
     invoice_y2009 AS (SELECT *
                       FROM invoices
                       WHERE InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31')

SELECT SUM(total) as total_revenue_usa_cust_2009
FROM usa_customers t1
         JOIN invoice_y2009 t2
              ON t1.CustomerId = t2.CustomerId;


