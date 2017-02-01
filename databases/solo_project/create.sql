CREATE TABLE artist (
id INTEGER PRIMARY KEY,
name VARCHAR(255),
origin VARCHAR(255),
alive BOOLEAN
);

CREATE TABLE song (
id INTEGER PRIMARY KEY,
title VARCHAR(255),
is_good BOOLEAN,
release_year INTEGER,
artist_id INTEGER,
FOREIGN KEY(artist_id) REFERENCES artist(id)
);