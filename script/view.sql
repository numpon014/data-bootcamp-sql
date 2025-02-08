-- Create View
CREATE VIEW invoice_jan2009 AS
SELECT
    InvoiceDate,
    BillingAddress,
    BillingCity,
    Total,
    ROUND(Total * 0.07, 2) AS vat
FROM
    invoices
WHERE
    invoiceDate > '2009-01-31';


-- Select from View
SELECT
    *
FROM
    invoice_jan2009
WHERE
    billingCity = 'Oslo';

-- Create View 2
CREATE VIEW usa_customers AS
SELECT
    *
FROM customers
WHERE
    country = 'USA';

-- Select from View 2
SELECT
    *
FROM
    usa_customers;


-- Drop View
DROP VIEW usa_customers;
DROP VIEW invoice_jan2009;