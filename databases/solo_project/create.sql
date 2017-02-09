CREATE TABLE streets(
id INTEGER PRIMARY KEY,
name VARCHAR(255)
);

CREATE TABLE houses(
id INTEGER PRIMARY KEY,
address INTEGER,
residents_name VARCHAR(255),
street_id INTEGER,
FOREIGN KEY(street_id) REFERENCES streets(id)
);

INSERT INTO streets (name) VALUES ('Reynolds Hill Rd.');
INSERT INTO streets (name) VALUES ('Summit St.');

INSERT INTO houses (address, residents_name, street_id) VALUES (10, 'Frank Menniti', 1);
INSERT INTO houses (address, residents_name, street_id) VALUES (3, 'Bob Petersen', 2);
INSERT INTO houses (address, residents_name, street_id) VALUES (9, 'Mr. Brown', 1);
INSERT INTO houses (address, residents_name, street_id) VALUES (7, 'Mrs. Hall', 1);