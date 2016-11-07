SELECT Track.Name AS "Track Name", COUNT(InvoiceLine.TrackId) AS "Number of Sales"
FROM Track 
JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
WHERE Invoice.InvoiceDate >= "2013-01-01" AND Invoice.InvoiceDate <= "2013-12-31"
GROUP BY (Track.TrackId)
ORDER BY(COUNT(InvoiceLine.TrackId))