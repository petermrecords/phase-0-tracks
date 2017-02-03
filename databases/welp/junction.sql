CREATE TABLE reviews(
id INTEGER PRIMARY KEY,
stars INTEGER,
comment VARCHAR(255),
business_id INTEGER,
user_id INTEGER,
FOREIGN KEY(business_id) REFERENCES businesses(id),
FOREIGN KEY(user_id) REFERENCES users(id)
);

INSERT INTO reviews (stars, comment, business_id, user_id)
VALUES (1, "It sucked!  My bride left me at the altar.", 1, 1);

INSERT INTO reviews (stars, comment, business_id, user_id)
VALUES (5, "I had fun!  Drinks were cheap and not watered down.", 3, 2);

INSERT INTO reviews (stars, comment, business_id, user_id)
VALUES (4, "These guys saved me when my car crashed, but it was expensive.", 2, 3);
