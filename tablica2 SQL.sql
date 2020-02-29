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
UPDATE book1 SET title='zmiana'  WHERE author='author';

CREATE TABLE PRZYKŁADOWA_TABELA (
KOLUMNA_1 VARCHAR(10) NOT NULL,
KOLUMNA_2 VARCHAR(10) NOT NULL
);
INSERT INTO PRZYKŁADOWA_TABELA(KOLUMNA_1, KOLUMNA_2) VALUES('WARTOSC_1', 'WARTOSC_2');

#Zadanie 4
ALTER TABLE book1 MODIFY COLUMN title VARCHAR(128) NOT NULL;
ALTER TABLE book1 MODIFY COLUMN author VARCHAR(128) NOT NULL;
ALTER TABLE book1 MODIFY COLUMN isbn VARCHAR(128) NOT NULL;
ALTER TABLE book1 MODIFY COLUMN isbn VARCHAR(128) UNIQUE;
ALTER TABLE book1 ALTER publisher SET DEFAULT 'nieznana';
DESC book1;
ALTER TABLE book1 ADD COLUMN in_stock INT;

# Truncate służy do usuwania wszystkich wierszy z tabeli
# TRUNCATE nazwa_tabeli;
# DELETE FROM nazwa_tabeli WHERE warunek; służy do usuwania wybranych wierszy z tabeli
#SELECT title, author FROM book1;
#SELECT * FROM book1; wyświetla wszystkie kolumny
# SELECT do pobierania danych
# SELECT title AS tytuł FROM book1;
# SELECT b.title FROM book1 AS b;
# WHERE do filtrowania danych w tabeli
#SELECT * FROM book1 WHERE page_count >= 1000;
#LIKE używany w kluzulii WHERE do wyszukiwania okreslonego wzoru w kolumnie
SELECT * FROM book1 WHERE price BETWEEN 50 AND 90;
SELECT * FROM book1 WHERE title LIKE 'MySQL.Vademecum profesjonalisty';
SELECT * FROM book1 WHERE title LIKE '%MySQL.Vademecum profesjonalisty%';
SELECT DISTINCT publisher FROM book1;

# LIMIT pozwala wybrac ograniczona liczbe rekordow (poczawszy od)
SELECT publisher FROM book1 LIMIT 1,2;

#ORDER BY pozwala sortowac wyniki zapytan
SELECT * FROM book1 ORDER BY author;
SELECT publisher, SUM(price) FROM book1 GROUP BY publisher;
SELECT SUM(page_count) AS total_pages FROM book1;
SELECT AVG(page_count) FROM book1;
SELECT MIN(page_count) FROM book1;
SELECT MAX(page_count) FROM book1;


# Klauzula WHERE wykonuje sie przed grupowaniem, a zatem nie mozna w tej klauzulii sprecyzować
# warunku zawierajacego funkcje grupowe. Aby taki warunek zawrzec w zapytaniu nalezy zastosowac dodatkowa klauzue
# HAVING wraz z odpowiednim warunkiem
SELECT count(*) as count, publisher FROM book1 GROUP BY publisher HAVING count > 1;

# mozemy wykorzystac podzapytania, ktorych wynik moze stanowic zbior wykorzystywany jako zbior dla operatora WHERE
SELECT * FROM book1 WHERE price = (SELECT min(price) FROM book1);


#EXISTS sluzy do sprawdzania istnienia jakiegokolwiek rekordu w podzapytaniu
#EXISTS zwraca true jesli zapytanie zwraca jeden lub wiecej rekordow
SELECT * FROM book1 WHERE EXISTS (SELECT * FROM book1 WHERE price < 100);

