SELECT COUNT(InvoiceId) AS "Number of Invoices"
FROM Invoice
WHERE STRFTIME('%Y',Invoice.InvoiceDate) = "2009"
OR STRFTIME('%Y',Invoice.InvoiceDate) = "2011"