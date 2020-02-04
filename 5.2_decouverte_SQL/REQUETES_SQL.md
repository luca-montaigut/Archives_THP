
# REQUETES SQL 

## Récupérer tous les albums

`SELECT Title FROM albums;`

## Récupérer tous les albums dont le titre contient "Great" (indice)

`SELECT * FROM albums WHERE Title LIKE '%Great%';`

## Donner le nombre total d'albums contenus dans la base (sans regarder les id bien sûr)

`SELECT COUNT(Title) FROM albums;`

## Supprimer tous les albums dont le nom contient "music"

`DELETE FROM albums WHERE Title LIKE '%music%';`

## Récupérer tous les albums écrits par AC/DC

`SELECT Title FROM albums JOIN artists ON artists.ArtistId = albums.ArtistId WHERE artists.Name = 'AC/DC';`

## Récupérer tous les titres des albums de AC/DC

`SELECT tracks.Name FROM tracks JOIN albums ON albums.AlbumId = tracks.AlbumId JOIN artists ON artists.ArtistId = albums.ArtistId WHERE artists.Name = 'AC/DC';`

## Récupérer la liste des titres de l'album "Let There Be Rock"

`SELECT Name FROM tracks JOIN albums ON albums.AlbumId = tracks.AlbumId WHERE albums.Title = 'Let There Be Rock';`

## Afficher le prix de cet album ainsi que sa durée totale

`SELECT SUM(Milliseconds) FROM tracks JOIN albums ON albums.AlbumId = tracks.AlbumId WHERE title = 'Let There Be Rock' UNION SELECT DISTINCT SUM(invoice_items.UnitPrice) FROM invoice_items JOIN tracks ON tracks.TrackId = invoice_items.TrackId JOIN albums ON albums.AlbumId = tracks.AlbumId WHERE albums.Title = 'Let There Be Rock';`

## Afficher le coût de l'intégralité de la discographie de "Deep Purple"

`SELECT SUM(invoice_items.UnitPrice) FROM invoice_items JOIN tracks ON tracks.TrackId = invoice_items.TrackId JOIN albums ON albums.AlbumId = tracks.AlbumId JOIN artists ON artists.ArtistId = albums.ArtistId WHERE artists.Name = "Deep Purple";`

## Créer l'album de ton artiste favori en base, en renseignant correctement les trois tables albums, artists et tracks

`INSERT INTO artists (Name) VALUES ('Rilès');`

`INSERT INTO albums (Title, ArtistId) VALUES ('Welcome to the Jungle',276);`

POUR CHAQUE TRACKS
`INSERT INTO tracks (Name, AlbumId, MediatypeId, GenreId, Composer, Milliseconds, Bytes, UnitPRice) VALUES (NomDeLaChanson, 348, etc...);`





