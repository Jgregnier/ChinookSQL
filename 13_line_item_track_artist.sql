SELECT I.*, Track.Name as "Track Name", Artist.Name as "Artist Name"
FROM InvoiceLine I
JOIN Track 
ON I.TrackId = Track.TrackId
JOIN Album
ON Album.AlbumId = Track.TrackId
JOIN Artist 
ON Album.ArtistId = Artist.ArtistId

