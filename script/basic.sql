-- Basic SELECT statement:
SELECT CustomerId as id,
       FirstName  as first_name,
       LastName   as last_name,
       Email      as email_address,
       Country    as country
FROM customers
WHERE country in ('USA', 'Canada', 'France');
-- tuple

-- Pattern match:
SELECT CustomerId as id,
       FirstName  as first_name,
       LastName   as last_name,
       Email      as email_address,
       Country    as country
FROM customers
WHERE country LIKE 'U%'
  AND email_address NOT LIKE '%yahoo.%' -- pattern match
  AND email_address LIKE '%gmail.%';


SELECT CustomerId                        as id,
       FirstName                         as first_name,
       LastName                          as last_name,
       Email                             as email_address,
       LOWER(firstName) || '@google.com' as new_email_address
FROM customers
WHERE email_address LIKE '%yahoo%';