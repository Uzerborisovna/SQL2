create table if not exists artists (
	id serial primary key,
	artists text,
	nickname text 
);
create table if not exists albums (
	id serial  primary key,
	name_album text,
	year_of_start integer
);

create table if not exists tracks (
	id serial primary key,
	name_track text,
	duration numeric,
	album_id  integer references albums(id)
);

create table if not exists genres (
	id serial primary key,
	name_genre text
);

create table if not exists collection (
	id serial primary key,
	name_collection text,
	year_of_start integer
);

create table if not exists genre_artists (
	id serial primary key,
	genres_id  integer references genres(id),
	artist_id  integer references artists(id)
);

create table if not exists artists_albums (
	id serial primary key,
	artist_id  integer references musicians(id),
	album_id  integer references albums(id)
	
);

create table if not exists tracks_collection (
	id serial primary key,
	collection_id  integer references collection(id),
	track_id  integer references tracks(id)
);


