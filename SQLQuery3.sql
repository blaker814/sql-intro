--SELECT * FROM Genre;


--SELECT * FROM Artist
--ORDER BY ArtistName


--SELECT s.Title, a.ArtistName
--FROM Song s
--JOIN Artist a ON a.Id = s.ArtistId


--SELECT a.ArtistName
--FROM Album
--JOIN Artist a ON Album.ArtistId = a.Id
--WHERE GenreId = 7;


--SELECT a.ArtistName, Album.Title
--FROM Album
--JOIN Artist a ON Album.ArtistId = a.Id
--WHERE GenreId = 2 OR GenreId = 4;


--SELECT a.Title AS AlbumTitle, s.Title AS SongTitle
--FROM Album a
--LEFT JOIN Song s ON a.Id = s.AlbumId
--WHERE s.AlbumId IS NULL;


--INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Queen', 1970);


--INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
--VALUES ('A Night at the Opera', '11/21/1975', 2588, 'EMI', 28, 2);


--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
--VALUES ('Bohemian Rhapsody', 355, '10/31/1975', 2, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
--VALUES ('You''re My Best Friend', 172, '06/18/1976', 2, 28, 23);


--SELECT a.Title AS AlbumTitle, s.Title AS SongTitle, Artist.ArtistName
--FROM Album a
--LEFT JOIN Song s ON s.AlbumId = a.Id
--LEFT JOIN Artist ON Artist.Id = a.ArtistId
--WHERE a.Id = 23;


--SELECT a.Title, COUNT(s.Id)
--FROM Album a
--LEFT JOIN Song s ON s.AlbumId = a.Id
--GROUP BY a.Title;


--SELECT a.ArtistName, COUNT(s.Id)
--FROM Artist a
--LEFT JOIN Song s ON s.ArtistId = a.Id
--GROUP BY a.ArtistName;


--SELECT g.Label, COUNT(s.Id)
--FROM Genre g
--LEFT JOIN Song s ON s.GenreId = g.Id
--GROUP BY g.Label;


--SELECT a.ArtistName, COUNT(DISTINCT Album.Label) AS NumLabels
--FROM Artist a
--LEFT JOIN Album ON Album.ArtistId = a.Id
--GROUP BY a.ArtistName
--HAVING COUNT(DISTINCT Album.Label) > 1;


--SELECT Title, AlbumLength
--FROM Album
--WHERE AlbumLength = (SELECT MAX(AlbumLength) FROM Album);


--SELECT s.Title, SongLength, a.Title AS Album
--FROM Song s
--JOIN Album a ON a.Id = s.AlbumId
--WHERE SongLength = (SELECT MAX(SongLength) FROM Song);