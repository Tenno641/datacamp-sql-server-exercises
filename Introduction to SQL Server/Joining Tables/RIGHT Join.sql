SELECT
	dbo.Album.AlbumId,
	dbo.Album.Title as album_title,
	dbo.Album.ArtistId,
	dbo.Artist.Name as artist_name,
	dbo.Track.Name
FROM 
	dbo.Album
INNER JOIN artist ON dbo.Album.ArtistId = Artist.ArtistId
RIGHT JOIN track ON dbo.Album.AlbumId = dbo.Track.AlbumId
