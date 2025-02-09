-- Replace NULL with desired values - with COALESCE
SELECT company,
       COALESCE(company, 'End Customer') AS cleanCompany
FROM customers;

-- Replace NULL with desired values - with CASE
SELECT company,
       CASE
           WHEN company IS NULL THEN 'End Customer'
           ELSE 'Corporate'
           END AS segment
FROM customers;