# 1. Widok
USE library;

CREATE VIEW sql_books AS
SELECT title, page_count FROM book1
WHERE category = 'Bazy danych';
SELECT * FROM library.sql_books;


#2 Trigger
CREATE DEFINER = CURRENT_USER TRIGGER 'library' . 'book1_BEFORE_INSERT'
BEFORE INSERT ON 'book1' FOR EACH ROW
BEGIN
SET NEW.category = concat('Kategoria',' ', NEW.category);
END

select * from book1;
INSERT INTO book1 (title, author, isbn, category)
VALUES ('Atlas świata', 'Przemek', 'triger 989899', 'atlas');