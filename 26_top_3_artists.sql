SELECT Artist.Name AS "Artist", Count(InvoiceLine.TrackId) AS "Number of Sales"
FROM Artist
JOIN Album ON Album.ArtistId = Artist.ArtistId
JOIN Track ON Track.AlbumId = Album.AlbumId
JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
GROUP BY Artist.ArtistId
ORDER BY ("Number of Sales") DESC
LIMIT 3