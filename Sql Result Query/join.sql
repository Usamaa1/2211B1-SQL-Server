--JOINS

SELECT * FROM migrations;
SELECT * FROM sea_lions;

SELECT * FROM sea_lions 
 JOIN
migrations ON sea_lions.id = migrations.id;

SELECT * FROM sea_lions
LEFT JOIN
migrations ON sea_lions.id = migrations.id;

SELECT * FROM sea_lions
RIGHT JOIN
migrations ON sea_lions.id = migrations.id;

SELECT * FROM sea_lions
FULL JOIN
migrations ON sea_lions.id = migrations.id;
