select name_genre, count (nickname) from artists a 
join genre_artists ga  on a.artist_id = ga.artist_id 
join genres g on ga.genres_id = g.genres_id 
group by g.genres_id;

select count(name_track) from tracks t 
join albums a on a.album_id = t.album_id 
where a.year_of_start between 2019 and 2020;

select name_album, AVG(duration) from tracks t 
join albums a on a.album_id = t.album_id 
group by a.name_album;

select nickname from artists a
where nickname not in (
select nickname from albums a 
join artists_albums aa on a.album_id = aa.album_id 
join artists a on aa.artist_id = a.artist_id
where a.year_of_start = 2020);

select collection_name from collections c 
join tracks_collection ct on c.collection_id = ct.collection_id 
join tracks t on ct.track_id = t.track_id 
join albums a on t.album_id = a.album_id 
join artists_albums aa on a.album_id = aa.album_id 
join artists a on aa.artist_id = a.artist_id 
where a.nickname like 'Evanescence';