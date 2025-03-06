select name_track, duration
from tracks
where duration = (select max(duration) from tracks);

select name_track, duration
from tracks
where duration >= 210;

select name_collection, year_of_start 
from collections
where year_of_start between 2018 and 2022;

select nickname
from artists
where nickname not like '% %';

select name_track
from tracks
where lower(name_track) like 'мой %' or lower(name_track) like '% мой' or lower(name_track) like '% мой %' or lower(name_track) like 'мой' 
or lowername_track) like 'my %' or lower(name_track) like '% my' or lower(name_track) like '% my %' or lower(name_track) like 'my';