-- Calculate the VAT for each invoice
SELECT
    InvoiceDate,
    BillingAddress,
    BillingCity,
    Total,
    ROUND(Total * 0.07, 2) AS vat
FROM
    invoices