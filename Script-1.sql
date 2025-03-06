INSERT INTO genres
(name_genre)
VALUES
('Rap'), 
('Pop'), 
('Rock');

INSERT INTO artists
(nickname)
VALUES
('AC/DC'), 
('Linkin Park'), 
('My Chemical Romance'), 
('Red Hot Chili Peppers'), 
('Evanescence');


INSERT INTO genre_artists
(genre_id, artist_id)
VALUES
(1, 5),
(2, 4),
(3, 1),
(4, 3),
(3, 2);

INSERT INTO albums
(name_album, year_of_start)
VALUES
('Shot Down In Flames', 2019),
('Meteora', 2003)
('The Black Parade', 2006), 
('The Getaway', 2016), 
('Evanescence', 2011);

INSERT INTO tracks
(name_track, duration, album_id)
VALUES
('High Voltage', 356, 1), 
('Pushing My Away', 191, 2), 
('Mama', 279, 3), 
('Victims', 195, 4), 
('Sick', 210, 5), 
('Oceans', 218, 5);

INSERT INTO artists_albums
(artist_id, album_id)
VALUES
(1, 4), 
(2, 5), 
(3, 1), 
(5, 3), 
(4, 2);

INSERT INTO collections
(name_collection, year_of_start)
VALUES
('The Party Boys ', 1987),
('Valentine', 2001)
('HALFLIVES', 2017), 
('Left For Dead', 2021);

INSERT INTO tracks_collection
(collection_id, track_id)
VALUES
(1, 1), 
(2, 2), 
(3, 4), 
(4, 5);