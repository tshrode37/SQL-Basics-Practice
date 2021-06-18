
/* 

Khan Academy: Think about your favorite apps, and pick one that stores your data- like a game that stores scores, an app that lets you post updates, etc.
Now in this project, you're going to imagine that the app stores your data in a SQL database (which is pretty likely!), 
and write SQL statements that might look like their own SQL.

CREATE a table to store the data.
INSERT a few example rows in the table.
Use an UPDATE to emulate what happens when you edit data in the app.
Use a DELETE to emulate what happens when you delete data in the app. */

CREATE TABLE fitness (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    date TEXT,
    hours_exercise INTEGER,
    water REAL,
    max_hr INTEGER
);

INSERT INTO fitness (date, hours_exercise, water, max_hr) VALUES ("6/14/2021", 1, 56.1, 150);

INSERT INTO fitness (date, hours_exercise, water, max_hr) VALUES ("6/15/2021", 2, 56.6, 147);

INSERT INTO fitness (date, hours_exercise, water, max_hr) VALUES ("6/16/2021", 3, 56.6, 157);

INSERT INTO fitness (date, hours_exercise, water, max_hr) VALUES ("6/17/2021", 2, 46.6, 138);

INSERT INTO fitness (date, hours_exercise, water, max_hr) VALUES ("6/18/2021", 2, 60.6, 168);

UPDATE fitness SET water = 58.9 
    WHERE id = 3;
    

ALTER TABLE fitness ADD exercise_type TEXT default "unknown";

SELECT * FROM fitness;

UPDATE fitness SET exercise_type = "hockey" 
    WHERE id = 3;

UPDATE fitness SET exercise_type = "kayaking"
    where id = 1;

UPDATE fitness SET exercise_type = "weights"
    where id = 2;

UPDATE fitness SET exercise_type = "spinning"
    where id = 4;

UPDATE fitness SET exercise_type = "walking"
    where id = 5;


INSERT INTO fitness (date, hours_exercise, water, max_hr, exercise_type) VALUES ("6/13/2021", 1, 60.0, 165, "running");

INSERT INTO fitness (date, hours_exercise, water, max_hr, exercise_type) VALUES ("6/12/2021", 2, 60.3, 165, "weights");


SELECT * FROM fitness ORDER BY date;

DELETE FROM fitness WHERE max_hr >= 168;
DELETE FROM fitness WHERE id = 1;

SELECT * FROM fitness;




