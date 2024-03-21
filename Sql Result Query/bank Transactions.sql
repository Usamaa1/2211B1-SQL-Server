CREATE DATABASE bank;


CREATE TABLE accounts(
id INT PRIMARY KEY IDENTITY(1,1),
name VARCHAR(200),
balance FLOAT
)


INSERT INTO accounts (name, balance)
VALUES
('Alice',10),
('Bob',20),
('Charlie',30);



SELECT * FROM accounts;

BEGIN TRANSACTION

UPDATE accounts SET balance = balance + 10
WHERE name = 'Bob';
UPDATE accounts SET balance = balance - 10
WHERE name = 'Alice';

COMMIT;


BEGIN TRANSACTION

UPDATE accounts SET balance = balance + 10
WHERE name = 'Bob';

ROLLBACK;


