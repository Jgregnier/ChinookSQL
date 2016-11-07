SELECT Track.Name AS "Track Name", COUNT(InvoiceLine.TrackId) AS "Number of Sales"
FROM Track 
JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
WHERE STRFTIME('%Y',Invoice.InvoiceDate) = "2013"
GROUP BY (Track.TrackId)
ORDER BY("Number of Sales")