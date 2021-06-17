/*
In this project, we are going to make a own table with some small set of “famous people”, and then make more tables about things they do and join those 
to create nice human readable lists.

For example, here are types of famous people and the questions your data could answer:

Movie stars: What movies are they in? Are they married to each other?
Singers: What songs did they write? Where are they from?
Authors: What books did they write?
Fictional characters: How are they related to other characters? What books do they show up in?
*/

/* 
Create Tables
*/

CREATE TABLE persons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT,
    genre TEXT,
    age INTEGER);
    
INSERT INTO persons (fullname, genre, age) VALUES ("Garth Brooks", "Country", 59);
INSERT INTO persons (fullname, genre, age) VALUES ("Trisha Yearwood", "Country", 56);
INSERT INTO persons (fullname, genre, age) VALUES ("Tim McGraw", "Country", 54);
INSERT INTO persons (fullname, genre, age) VALUES ("Justin Bieber", "Pop", 27);
INSERT INTO persons (fullname, genre, age) VALUES ("Faith Hill", "Country", 53);
INSERT INTO persons (fullname, genre, age) VALUES ("Carrie Underwood", "Country", 38);
INSERT INTO persons (fullname, genre, age) VALUES ("Drake", "Rapper", 34);
INSERT INTO persons (fullname, genre, age) VALUES ("Jason Aldean", "Country", 44);
INSERT INTO persons (fullname, genre, age) VALUES ("Lady Gaga", "Pop", 35);
INSERT INTO persons (fullname, genre, age) VALUES ("Luke Bryan", "Country", 44);
INSERT INTO persons (fullname, genre, age) VALUES ("Kane Brown", "Country", 27);
INSERT INTO persons (fullname, genre, age) VALUES ("Beyonce", "Pop", 39);
INSERT INTO persons (fullname, genre) VALUES ("Jay-Z", "Rapper", 51);



CREATE table songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    name TEXT);
    
INSERT INTO songs (person_id, name) VALUES (1, "Friends in Low Places");
INSERT INTO songs (person_id, name) VALUES (1, "Callin' Baton Rouge");
INSERT INTO songs (person_id, name) VALUES (2, "She's in Love With the Boy");
INSERT INTO songs (person_id, name) VALUES (5, "This Kiss");
INSERT INTO songs (person_id, name) VALUES (5, "The Way You Love Me");
INSERT INTO songs (person_id, name) VALUES (3, "Live Like You Were Dying");
INSERT INTO songs (person_id, name) VALUES (3, "Just to See You Smile");
INSERT INTO songs (person_id, name) VALUES (6, "Before He Cheats");
INSERT INTO songs (person_id, name) VALUES (6, "The Champion");
INSERT INTO songs (person_id, name) VALUES (4, "Baby");
INSERT INTO songs (person_id, name) VALUES (4, "Holy");
INSERT INTO songs (person_id, name) VALUES (4, "I Don't Care");
INSERT INTO songs (person_id, name) VALUES (7, "One Dance");
INSERT INTO songs (person_id, name) VALUES (7, "God's Plan");
INSERT INTO songs (person_id, name) VALUES (9, "Poker Face");
INSERT INTO songs (person_id, name) VALUES (9, "Rain On Me");
INSERT INTO songs (person_id, name) VALUES (10, "One Margarita");
INSERT INTO songs (person_id, name) VALUES (11, "Be Like That");
INSERT INTO songs (person_id, name) VALUES (13, "Single Ladies");


CREATE table couples (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person1_id INTEGER,
    person2_id INTEGER);

INSERT INTO couples (person1_id, person2_id)
    VALUES (1, 2);
INSERT INTO couples (person1_id, person2_id)
    VALUES (3, 5);
    INSERT INTO couples (person1_id, person2_id)
    VALUES (13, 14);


SELECT * FROM persons;  
SELECT * FROM songs;
SELECT * FROM couples; 

/* Cross join */
SELECT * FROM persons, songs;

/* implicit inner join */
SELECT * FROM persons, songs
    WHERE persons.id = songs.person_id;
    
/* explicit inner join - Does not include any null values */
SELECT persons.fullname, persons.genre, songs.name, persons.age
    FROM persons
    JOIN songs
    ON persons.id = songs.person_id;

/* explicit inner join - JOIN */
SELECT persons.fullname, persons.genre, songs.name 
    FROM persons
    JOIN songs
    ON persons.id = songs.person_id
    WHERE genre LIKE "%country%";

/* outer join - includes null values */ 
SELECT persons.fullname, persons.genre, songs.name 
    FROM persons
    LEFT OUTER JOIN songs
    ON persons.id = songs.person_id;
 
/* self join */  
SELECT persons.fullname, a.fullname, persons.age
    FROM persons
    LEFT OUTER JOIN persons a
    ON persons.age = a.age    
    WHERE persons.fullname <> a.fullname
    GROUP BY persons.age;

/* multiple joins */
SELECT a.fullname, b.fullname
    FROM couples
    JOIN persons a
    ON a.id = couples.person1_id
    JOIN persons b
    ON b.id = couples.person2_id
