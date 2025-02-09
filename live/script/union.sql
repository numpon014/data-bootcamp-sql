-- UNION ALL (append) two tables with the same structure - Allow duplicate
-- Usage: SELECT * FROM table1 UNION SELECT * FROM table2
SELECT
    FirstName,
    Country
FROM customers
WHERE Country = 'Brazil'

UNION ALL
SELECT
    FirstName,
    Country
FROM customers
WHERE Country = 'Canada'

UNION ALL
SELECT
    FirstName,
    Country
FROM customers
WHERE Country = 'Italy';

-- UNION (append) two tables with the same structure - Not allow duplicate
-- Usage: SELECT * FROM table1 UNION SELECT * FROM table2
SELECT
    FirstName,
    Country
FROM customers
WHERE Country = 'Brazil'

UNION
SELECT
    FirstName,
    Country
FROM customers
WHERE Country = 'Canada'

UNION
SELECT
    FirstName,
    Country
FROM customers
WHERE Country = 'Italy';