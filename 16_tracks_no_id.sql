SELECT Track.Name as "Track Name", Album.Title as "Album Name", MediaType.Name as "Media Type Name", Genre.Name as "Genre Name"
FROM Track 
JOIN MediaType ON MediaType.MediaTypeId = Track.MediaTypeId
JOIN Genre ON Genre.GenreId = Track.GenreId
JOIN Album ON Album.AlbumId = Track.AlbumId