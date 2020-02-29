# 1 Tworzenie tabel
CREATE TABLE author (
first_name VARCHAR(128),
last_name VARCHAR(128)
);

# 2. Pokazanie klauzuli IF NOT EXIST

CREATE TABLE book (
title VARCHAR(128),
author VARCHAR(128),
published  DATE,
isbn VARCHAR(128),
category VARCHAR(128),
page_count TINYINT(128),
publisher VARCHAR(128),
price FLOAT
);
ALTER TABLE book ADD COLUMN new_column TINYINT;
ALTER TABLE book MODIFY COLUMN new_column TINYINT NOT NULL;
DESC book;
SHOW DATABASES;
SHOW TABLES;
DESC book;






CREATE TABLE book1 (
title VARCHAR(128),
author VARCHAR(128),
published  DATE,
isbn VARCHAR(128),
category VARCHAR(128),
page_count INT(128),
publisher VARCHAR(128),
price FLOAT
);
ALTER TABLE book MODIFY COLUMN page_count  INT;
ALTER TABLE book MODIFY COLUMN price  FLOAT;
ALTER TABLE book1 ADD COLUMN new_column TINYINT;
ALTER TABLE book1 MODIFY COLUMN page_count  INT;
ALTER TABLE book1 DROP COLUMN new_column;
ALTER TABLE book DROP COLUMN new_column;
DESC book1;
SHOW DATABASES;
SHOW TABLES;
DESC book1;

INSERT INTO book1 (title,author,published,isbn,category,page_count,publisher,price)
VALUES ('Spring w akcji','Craig Walls','2015-08-13','978-83-283-0849-7','Programowanie java','624','Helion','89.00');


INSERT INTO book1 (title,author,published,isbn,category,page_count,publisher,price)
VALUES ('MySQL.Vademecum profesjonalisty','Paul DuBois','2014-03-28','978-83-246-8146-4','Baza danych','1216','Helion','149.90');

SELECT * FROM book1;

DELETE FROM book1 WHERE author='Wydanie IV';



