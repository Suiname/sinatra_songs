CREATE DATABASE sinatra_songs;
\c sinatra_songs
CREATE TABLE songs (id SERIAL PRIMARY KEY, artist varchar(255), title varchar(255), release_year Interval year);
