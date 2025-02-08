-- COALESCE and CASE WHEN
SELECT FirstName,
       Company,
       COALESCE(Company, 'No Company') as clean_company
FROM customers;

-- CASE WHEN
-- The CASE WHEN statement is similar to COALESCE, but it allows for more complex logic. The syntax is:
SELECT FirstName,
       Company,
       CASE
           WHEN Company IS NULL THEN 'No Company'
           ELSE Company
       END as clean_company
FROM customers;