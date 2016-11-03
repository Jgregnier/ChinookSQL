SELECT I.*, Track.Name
FROM InvoiceLine I
JOIN Track 
ON I.TrackId = Track.TrackId