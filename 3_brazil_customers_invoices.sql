SELECT C.CustomerId, InvoiceId, FirstName, LastName, BillingCountry, I.InvoiceDate
FROM Customer C
JOIN Invoice I
ON C.CustomerId = I.CustomerId
WHERE C.Country = "Brazil"
ORDER BY InvoiceId DESC
