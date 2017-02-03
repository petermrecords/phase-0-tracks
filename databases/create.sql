
--Create players table

CREATE TABLE players(
id INTEGER PRIMARY KEY,
name VARCHAR(255),
number INTEGER,
team VARCHAR(255)
);

INSERT INTO players (name, number, team) VALUES ('Paula Bunion', 45, 'Wrecking Belles');
INSERT INTO players (name, number, team) VALUES ('Grave Danger', 6, 'Team Unicorn');

--Create teams table

CREATE TABLE teams(
id INTEGER PRIMARY KEY,
name VARCHAR(255)
);

INSERT INTO teams (name) VALUES ('Wrecking Belles');
INSERT INTO teams (name) VALUES ('Team Unicorn');

--Drop & recreate players w/ foreign keys

DROP TABLE players;

CREATE TABLE players(
id INTEGER PRIMARY KEY,
name VARCHAR(255),
number INTEGER,
team_id INTEGER,
FOREIGN KEY(team_id) REFERENCES teams(id)
);

INSERT INTO players (name, number, team_id) VALUES ('Paula Bunion', 45, 1);
INSERT INTO players (name, number, team_id) VALUES ('Grave Danger', 6, 2);
INSERT INTO players (name, number, team_id) VALUES ('April Bloodgate', 12, 2);

--Queries

SELECT * FROM players INNER JOIN teams ON players.team_id = teams.id;

SELECT players.name, players.number, teams.name FROM players INNER JOIN teams on players.team_id = teams.id;