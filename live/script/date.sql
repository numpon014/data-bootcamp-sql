-- Date Filter
SELECT *
FROM invoices
WHERE InvoiceDate < '2009-02-01';

-- Substring Date Between
SELECT InvoiceDate,
       BillingAddress,
       BillingCity,
       UPPER(SUBSTR(BillingCity, 1, 3)) AS city_code
FROM invoices
WHERE InvoiceDate between '2009-01-01' AND '2009-01-31';