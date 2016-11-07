SELECT TOTAL(Total) AS "Total Sales", STRFTIME('%Y',Invoice.InvoiceDate) AS InvoiceYear 
FROM Invoice
WHERE InvoiceYear = "2009"
OR InvoiceYear = "2011"
GROUP BY (InvoiceYear)