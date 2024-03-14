--CREATE DATABASE art_museum;

--DROP TABLE arts;

/*CREATE TABLE arts
(
id INT IDENTITY(1,1) PRIMARY KEY,
title VARCHAR(255),
accession_number FLOAT,
acquired VARCHAR(200)
)
*/
/*
INSERT INTO arts(title, accession_number, acquired)
VALUES
('Profusion of Flowers',56.257,'1956-04-12'),
('Farmers working at dawn',11.6152,'1911-08-03'),
('Spring Outing',14.76,'1914-01-08');
*/
--SELECT * FROM arts;

/*
INSERT INTO arts(title, accession_number, acquired)
VALUES
('Imaginative Land',56.496,NULL),
('Peonies and butterfly',06.1899,'1906-01-01'),
('Tile Lunette',06.2437,'1906-11-08');
*/

--DELETE FROM arts WHERE title = 'Imaginative Land';

--SELECT * FROM arts;

--DELETE FROM arts WHERE acquired <= '1906-01-01';
--DELETE FROM arts WHERE accession_number <= 11.7;



--sp_rename arts, collections;

--Collections



SELECT * FROM collections;


--DROP TABLE created;
CREATE TABLE created
(
	artist_id INT,
	collection_id INT,
	FOREIGN KEY(artist_id) REFERENCES artists(id) ,
	FOREIGN KEY(collection_id) REFERENCES collections(id)
)




 INSERT INTO created(artist_id,collection_id)
VALUES
(2,3),
(3,1),
(1,7),
(4,3)



SELECT * FROM created;

SELECT * FROM artists;



DELETE FROM artists WHERE id = 3;



CREATE TABLE created
(
	artist_id INT,
	collection_id INT,
	FOREIGN KEY(artist_id) REFERENCES artists(id) ON DELETE CASCADE,
	FOREIGN KEY(collection_id) REFERENCES collections(id) ON DELETE CASCADE
)



 INSERT INTO created(artist_id,collection_id)
VALUES
(2,3),
(3,1),
(1,7),
(4,3)

DELETE FROM artists WHERE id = 3;

SELECT * FROM artists;

SELECT * FROM created;

UPDATE created SET artist_id = 
(
	SELECT id FROM artists WHERE 
	CONVERT(VARCHAR,name) = 'Li Yin'
)
WHERE artist_id = (
	SELECT id FROM artists 
	WHERE CONVERT(VARCHAR,name) = 'Zhou Chen'
);


