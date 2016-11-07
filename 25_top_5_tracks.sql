SELECT Track.Name AS "Track Name", COUNT(InvoiceLine.TrackId) AS "Number of Sales"
FROM InvoiceLine
JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
WHERE Invoice.InvoiceDate LIKE "2013%"
GROUP BY (Track.TrackId) 
ORDER BY "Number of Sales"