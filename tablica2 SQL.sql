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
price DECIMAL
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
page_count TINYINT(128),
publisher VARCHAR(128),
price FLOAT
);
ALTER TABLE book1 ADD COLUMN new_column TINYINT;
ALTER TABLE book1 MODIFY COLUMN new_column TINYINT NOT NULL;
DESC book1;
SHOW DATABASES;
SHOW TABLES;
DESC book1;
