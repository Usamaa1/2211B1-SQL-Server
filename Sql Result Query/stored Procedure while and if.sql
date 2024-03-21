--DECLARE @num1 INT;
--DECLARE @num2 INT;

CREATE PROCEDURE sp_add @num1 int, @num2 int
AS
BEGIN
	
	PRINT @num1 + @num2

END;

sp_add 23, 34;


DECLARE @number INT;
SET @number = 1;

WHILE @number <= 10
BEGIN
	PRINT @number;
	SET @number = @number + 1;
END;

DECLARE @age INT;
SET @age = 15;

IF @age >= 18 
BEGIN
	PRINT 'You are ready to drive'
END
ELSE IF @age < 18 
BEGIN
	PRINT 'You are Below 18'
END
ELSE
BEGIN
	PRINT 'Invalid Input'
END




