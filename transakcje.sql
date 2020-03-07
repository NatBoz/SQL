USE library;

#3
UPDATE book1 SET price=1000 WHERE isbn = '978-83-246-8146-4';
#4
INSERT INTO book1 (title, author, isbn)
VALUES ( ' tytuł', ' autor', 'isbn 5678');
#5
SELECT * FROM book1;

#2
ROLLBACK;
SELECT * FROM book1;

#3
COMMIT;
SELECT * FROM book1;


