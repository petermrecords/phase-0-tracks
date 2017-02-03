
--1
SELECT businesses.name, users.first_name, users.last_name, stars
FROM reviews INNER JOIN users on users.id = reviews.user_id
INNER JOIN businesses ON businesses.id = reviews.business_id;
--2
SELECT businesses.name, users.first_name, users.last_name, stars, comment
FROM reviews INNER JOIN users on users.id = reviews.user_id
INNER JOIN businesses ON businesses.id = reviews.business_id;
--3
SELECT businesses.name, users.first_name, users.last_name, stars, comment
FROM reviews INNER JOIN users on users.id = reviews.user_id
INNER JOIN businesses ON businesses.id = reviews.business_id
WHERE businesses.name = 'Grundy Hollow Wedding Chapel';