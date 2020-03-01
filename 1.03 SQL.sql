# Cw 6 
#1. Utworz tabele backup_book i przekopiuj do niej wszystkie książki
#2. Utworz tabele selected_book i przekopiuj do niej wszystkie ksiazki z kategorii Bazy danych
# (pomijajac kolumne kategoria)

#1
CREATE TABLE backup_book (
title VARCHAR(128),
author VARCHAR(128),
published  DATE,
isbn VARCHAR(128),
category VARCHAR(128),
page_count INT(128),
publisher VARCHAR(128),
price FLOAT
);

INSERT INTO backup_book SELECT * FROM book;
SELECT * FROM backup_book;

# CREATE TABLE backup_book2 AS SELECT * FROM book; 


#2
CREATE TABLE selected_book (
title VARCHAR(128),
author VARCHAR(128),
published  DATE,
isbn VARCHAR(128),
page_count INT(128),
publisher VARCHAR(128),
price FLOAT
);
DESC selected_book;
INSERT INTO selected_book SELECT 
title,
authorpublished,
isbn,
page_count,
publisher,
price
 FROM book 
 WHERE category = 'Bazy danych';
