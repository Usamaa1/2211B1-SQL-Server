SELECT * FROM translated;
SELECT * FROM translators;

SELECT id FROM translators 
WHERE name = 'Sophie Hughes';
SELECT id FROM translators 
WHERE name = 'Margaret Jull Costa';


SELECT book_id FROM translated 
WHERE translator_id = 68
INTERSECT
SELECT book_id FROM translated 
WHERE translator_id = 44;



SELECT title FROM books WHERE id = (

	SELECT book_id FROM translated
	WHERE translator_id = 
		(
		SELECT id FROM translators
		WHERE name = 'Sophie Hughes'
		)

	INTERSECT

	SELECT book_id FROM translated
	WHERE translator_id = 
		(
		SELECT id FROM translators
		WHERE name = 'Margaret Jull Costa'
		)
)


SELECT name, 'Authors' AS Profession FROM authors
UNION
SELECT name, 'Translators' AS Profession FROM translators;


SELECT name FROM authors
EXCEPT
SELECT name FROM translators


SELECT name FROM translators
EXCEPT
SELECT name FROM authors





SELECT name FROM authors
INTERSECT
SELECT name FROM translators





SELECT book_id, AVG(rating) AS avg_rating FROM ratings
GROUP BY book_id HAVING AVG(rating) < 4;
