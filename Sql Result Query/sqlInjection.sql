CREATE TABLE users 
(
	id INT PRIMARY KEY IDENTITY(1,1),
	userName VARCHAR(200),
	password VARCHAR(200)
);

INSERT INTO users (userName, password)
VALUES
('zahid','zahid123'),
('ashraf','ashraf123'),
('hina','hina123');



DECLARE @user VARCHAR(200) = 'zahid';
DECLARE @pass VARCHAR(200) = 'zahid123 OR ''1'' = ''1''';

--SELECT id FROM users WHERE userName = 
--'zahid' AND password = 'zahid' OR '1' = '1';

SELECT id FROM users WHERE userName = 
@user AND password = @pass;
