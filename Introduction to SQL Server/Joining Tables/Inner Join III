SELECT
	dbo.Track.TrackId,
	dbo.Track.Name as song_name,
	dbo.Album.Title as album_title,
	dbo.Artist.Name as artist_name
FROM
	dbo.Track
INNER JOIN Album ON dbo.Track.AlbumId = dbo.Album.AlbumId
INNER JOIN Artist ON dbo.Album.ArtistId = dbo.Artist.ArtistId

