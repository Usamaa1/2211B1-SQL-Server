SELECT * FROM books;
SELECT * FROM authored;
SELECT * FROM authors;

--SELECT  title,name, pages, year,books.id,authored.book_id,authors.id FROM books
--JOIN authored ON books.id = authored.book_id
--JOIN authors ON authored.author_id = authors.id;



CREATE VIEW books_authors
AS
SELECT  title,name, pages, year FROM books
JOIN authored ON books.id = authored.book_id
JOIN authors ON authored.author_id = authors.id;


SELECT * FROM books_authors WHERE name = 'Gauz';


CREATE VIEW avg_book_rating AS
SELECT id,title,CAST(REPLACE(book_id,'"','') AS INT) AS book_id, AVG(rating) AS book_rating
FROM ratings
JOIN 
books ON id = CAST(REPLACE(book_id,'"','') AS INT)
GROUP BY CAST(REPLACE(book_id,'"','') AS INT), id, title;




SELECT * FROM ratings;

SELECT * FROM avg_book_rating;



--CREATE TABLE #temp
--(name VARCHAR(200))

--INSERT INTO #temp VALUES ('ARIF'),('ZAHID'),('HINA')

--SELECT * FROM #temp;


CREATE VIEW books_2023 AS
SELECT * FROM books WHERE year = 2023;

CREATE VIEW books_2022 AS
SELECT * FROM books WHERE year = 2022;

CREATE VIEW books_2021 AS
SELECT * FROM books WHERE year = 2021;

CREATE VIEW books_2020 AS
SELECT * FROM books WHERE year = 2020;

SELECT * FROM books_2022;





CREATE TABLE rides
(
id INT PRIMARY KEY IDENTITY(1,1),
origin VARCHAR(200),
destination VARCHAR(200),
rider VARCHAR(200)
);


INSERT INTO rides(origin,destination,rider)
VALUES
('Good Egg Galaxy','Honeyhive Galaxy','Peach'),
('Castle Courtyard','Cascade Kingdom','Mario'),
('Metro Kingdom','Mushroom Kingdom','Luigi'),
('Seaside Kingdom','Deep Woods','Bowser');




SELECT * FROM rides;

CREATE VIEW destination_rides AS
SELECT id, origin, destination FROM rides;

SELECT * FROM destination_rides;

CREATE LOGIN asfar WITH PASSWORD = '123';

CREATE USER asfar FOR LOGIN asfar;

SELECT * FROM sys.sql_logins;


GRANT SELECT ON dbo.destination_rides TO asfar;

GRANT SELECT ON dbo.books_authors TO asfar;

SELECT * FROM books;












SELECT * FROM collections;

CREATE VIEW current_collections AS
SELECT * FROM collections 
WHERE deleted = 0;


SELECT * FROM current_collections;


CREATE TRIGGER collections_soft_delete
ON current_collections
INSTEAD OF DELETE
AS
BEGIN
	UPDATE collections SET deleted = 1
	FROM deleted WHERE
	collections.id = deleted.id;

END;


DELETE FROM current_collections WHERE title = 'Profusion of Flowers';
