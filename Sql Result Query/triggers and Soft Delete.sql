SELECT * FROM collections;

INSERT INTO collections(title, accession_number, acquired)
VALUES
('Ponnies and Butterfly',45.553,'1945-09-12'),
('Farmers working at Dawn',99.673,'1999-03-11');

CREATE TABLE transactions
(
	id INTEGER PRIMARY KEY IDENTITY(1,1),
	title VARCHAR(200),
	action VARCHAR(200)
);

CREATE TRIGGER sell
ON collections
AFTER DELETE
AS
BEGIN
	INSERT INTO transactions(title, action)
	SELECT title, 'Sold'
	FROM deleted;

END;

SELECT * FROM collections;
SELECT * FROM transactions;

DELETE FROM collections WHERE id = 7;

ALTER TABLE 
collections
ADD deleted INTEGER CHECK(deleted IN (0,1)) DEFAULT 0;

UPDATE collections 
SET deleted = 0

SELECT * FROM collections;

UPDATE collections SET deleted = 1 
WHERE id = 3;

SELECT * FROM collections WHERE deleted = 0;
