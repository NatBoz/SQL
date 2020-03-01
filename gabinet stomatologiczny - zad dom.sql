USE gabinet;

CREATE TABLE stomatolog (
id INT NOT NULL,
first_name VARCHAR(128),
last_name VARCHAR(128),
age int,
PRIMARY KEY(id)
);

CREATE TABLE pacjent (
id INT NOT NULL,
first_name VARCHAR(128),
last_name VARCHAR(128),
age INT,
PRIMARY KEY(id)
);

CREATE TABLE wizyta (
godzina TIME,
stomatolog_id INT,
pacjent_id INT,
 FOREIGN KEY (stomatolog_id) REFERENCES stomatolog(id),
    FOREIGN KEY (pacjent_id) REFERENCES pacjent(id)
);

INSERT INTO stomatolog VALUES (1,'Adam','Adamiak',25);
INSERT INTO stomatolog VALUES (2,'Krzysztof','Nowak',26);
INSERT INTO stomatolog VALUES (3,'Katarzyna','Kowalska',27);

INSERT INTO pacjent VALUES (1,'Justyna','Florczak',18);
INSERT INTO pacjent VALUES (2,'Jacek','Janiczek',20);
INSERT INTO pacjent VALUES (3,'Stanisław','Florczak',22);
INSERT INTO pacjent VALUES (4,'Janina','Więckowska',24);

