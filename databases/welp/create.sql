CREATE TABLE businesses(
id INTEGER PRIMARY KEY,
name VARCHAR(255)
);

CREATE TABLE users(
id INTEGER PRIMARY KEY,
first_name VARCHAR(255),
last_name VARCHAR(255)
);

INSERT INTO businesses (name) VALUES ("Grundy Hollow Wedding Chapel");
INSERT INTO businesses (name) VALUES ("Amir's Towing");
INSERT INTO businesses (name) VALUES ("The Beagle Nightclub");

INSERT INTO users (first_name, last_name) VALUES ("Bradford", "Pitt");
INSERT INTO users (first_name, last_name) VALUES ("Mandy", "Kaling");
INSERT INTO users (first_name, last_name) VALUES ("Angela", "Jolie");