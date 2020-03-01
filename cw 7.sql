USE cinema;

# 2.Utwórz tabele actor i movie. Im więcej pól opisujących aktora i film dodasz tym lepiej. 
# Pamiętaj o utworzeniu relacji pomiędzy tabelami. Jaki rodzaj relacji zastosujesz?

CREATE TABLE actor (
	id INT NOT NULL,
    first_name VARCHAR(128) NOT NULL,
    last_name VARCHAR(128) NOT NULL,
    age INT,
    height FLOAT,
    weight FLOAT,
    nationality VARCHAR(128),
    sex VARCHAR(128),
    PRIMARY KEY (id)
    );
    DESC actor;
    
    CREATE TABLE movie (
     id INT NOT NULL,
    name VARCHAR(128),
    director VARCHAR(128),
    genre VARCHAR(128),
    actor_id INT,
    PRIMARY KEY (id)
    );
    DESC movie;
    # jeden aktor w kilku filmach
    # w jednym filmie wielu aktorow
    
    CREATE TABLE starred_in (
    actor_id INT,
    movie_id INT,
    FOREIGN KEY (actor_id) REFERENCES actor(id),
    FOREIGN KEY (movie_id) REFERENCES movie(id)
    );
    

    
   # 3.Do tabeli actor dodaj swojego ulubionego aktora.
   
   INSERT INTO actor(id,first_name,last_name,age,height,weight,nationality,sex)
   VALUES (1,'Keanu','Reeves',56,1.86,80,'canadian','male');
   
     SELECT * FROM actor;
   
   #   4.Do tabeli movie dodaj trzy filmy, w których zagrał Twój ulubiony aktor.
   INSERT INTO movie(id,name,director,genre)
   VALUES (1,'Matrix','Lily Wachowski','science-fiction');
   
   INSERT INTO movie(id,name,director,genre)
   VALUES (2,'The Watcher','Ryan Rothmaier','horror');
   
    INSERT INTO movie(id,name,director,genre)
   VALUES (3,'A Walk in the Clouds','Ryan Rothmaier','melodramat');
   
   SELECT * FROM movie;
   
   
   # 5.Za pomocą jednego polecania select wypisz informacje o filmach, w których zagrał Twój ulubiony aktor.

SELECT movie.*
FROM actor
JOIN movie
JOIN starred_in on starred_in.actor_id=actor.id
AND starred_in.movie_id=movie.id
WHERE actor.last_name='Reeves';

   #6.Dodaj kolejny dowolny film (w którym Twój ulubiony aktor nie grał)
# oraz aktora który zagrał w tym filmie.



