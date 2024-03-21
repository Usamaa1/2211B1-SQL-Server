SELECT * FROM movies;
SELECT * FROM movies WHERE title = 'Home sweet home';

CREATE INDEX movies_name
ON movies (title);

SELECT * FROM movies WHERE title = 'Toy Story';

sp_helpindex movies;

CREATE INDEX mv_2023
ON movies(title)
WHERE year = 2023;


SELECT * FROM movies WHERE year = 2023;

SELECT * FROM movies WHERE title = 'Gina';

