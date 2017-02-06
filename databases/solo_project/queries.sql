--1

SELECT * FROM houses;

1|10|Frank Menniti|1
2|3|Bob Petersen|2
3|9|Mr. Brown|1
4|7|Mrs. Hall|1

--2

UPDATE houses SET residents_name = 'Mr. Brown Jr.' WHERE residents_name = 'Mr. Brown';

--3

SELECT houses.*, streets.*
FROM houses INNER JOIN streets ON streets.id = houses.street_id;

1|10|Frank Menniti|1|1|Reynolds Hill Rd.
2|3|Bob Petersen|2|2|Summit St.
3|9|Mr. Brown Jr.|1|1|Reynolds Hill Rd.
4|7|Mrs. Hall|1|1|Reynolds Hill Rd.

--4

SELECT houses.address, streets.name
FROM houses INNER JOIN streets ON streets.id = houses.street_id;

10|Reynolds Hill Rd.
3|Summit St.
9|Reynolds Hill Rd.
7|Reynolds Hill Rd.

--5

DELETE FROM houses WHERE address = 7;

--outer join

SELECT houses.residents_name, streets.name
FROM houses OUTER JOIN streets;

--Error: near line 25: RIGHT and FULL OUTER JOINs are not currently supported

SELECT houses.residents_name, streets.name
FROM houses LEFT OUTER JOIN streets;

Frank Menniti|Reynolds Hill Rd.
Frank Menniti|Summit St.
Bob Petersen|Reynolds Hill Rd.
Bob Petersen|Summit St.
Mr. Brown Jr.|Reynolds Hill Rd.
Mr. Brown Jr.|Summit St.
