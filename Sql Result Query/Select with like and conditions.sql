--CREATE DATABASE books;

--SELECT title FROM books;
--SELECT * FROM books WHERE title = 'Still Born';
--SELECT * FROM books WHERE title like 'S%';
--SELECT * FROM books WHERE title like '%s%';
--SELECT * FROM books WHERE title like '_y%';


--SELECT * FROM books WHERE format = 'paperback' and year = 2024;
--SELECT * FROM books WHERE pages >= 300 or year = 2024;


SELECT * FROM books WHERE year BETWEEN 2020 AND 2023;

SELECT * FROM books ORDER BY title DESC;


SELECT COUNT(title) FROM  books WHERE year BETWEEN 2020 AND 2023;

SELECT AVG(rating) FROM ratings;

SELECT MAX(rating) FROM ratings;
SELECT MIN(rating) FROM ratings;
SELECT SUM(rating) FROM ratings;


SELECT DISTINCT year FROM books;

SELECT ROUND(2.4464554,0);
