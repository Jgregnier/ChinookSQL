SELECT COUNT(TrackId) as "Number of tracks in Playlist" , Playlist.Name
FROM PlaylistTrack
JOIN Playlist 
ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
GROUP BY(Playlist.Name)