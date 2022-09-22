-- DESCRIPTION

-- Consider an institution that wants to store the students’ details and their marks records to track their progress.
-- The database would contain the students’ information, marks of the students with the rank that can be viewed, updated, and evaluated for the performance evaluation.

-- Objective:

-- The design of the database helps to easily retrieve thousands of student records.

-- Tasks to be performed:

-- Write a query to create a students table with appropriate data types for student id, student first name, student last name, class, and age where the student last name, student first name, and student id should be a NOT NULL constraint, and the student id should be in a primary key.
CREATE DATABASE School;

USE School;

CREATE TABLE Students_Table(
student_id int NOT NULL,
student_fname varchar(100) NOT NULL,
student_lname varchar(100) NOT NULL,
class varchar(50),
age int,
PRIMARY KEY(student_id)
);
-- Write a query to create a marksheet table that includes score, year, ranking, class, and student id.
CREATE TABLE Marksheet(
score int NOT NULL,
years int NOT NULL,
ranking varchar(100) NOT NULL,
class varchar(100),
student_id int NOT NULL
);
-- Write a query to insert values in students and marksheet tables.
INSERT INTO Students_Table (student_id,student_fname,student_lname,class,age) VALUES(1,'krishna','gee',10,18);
INSERT INTO Students_Table (student_id,student_fname,student_lname,class,age) VALUES(2,'Stephen','Christ',10,17);
INSERT INTO Students_Table (student_id,student_fname,student_lname,class,age) VALUES(3,'Kailash','kumar',10,18);
INSERT INTO Students_Table (student_id,student_fname,student_lname,class,age) VALUES(4,'ashish','jain',	10,16);
INSERT INTO Students_Table (student_id,student_fname,student_lname,class,age) VALUES(5,'khusbu','jain',	10,17);
INSERT INTO Students_Table (student_id,student_fname,student_lname,class,age) VALUES(6,'madhan','lal',10,16);
INSERT INTO Students_Table (student_id,student_fname,student_lname,class,age) VALUES(7,'saurab','kothari',10,15);
INSERT INTO Students_Table (student_id,student_fname,student_lname,class,age) VALUES(8,'vinesh','roy',10,14);
INSERT INTO Students_Table (student_id,student_fname,student_lname,class,age) VALUES(9,'rishika','r',10,15);
INSERT INTO Students_Table (student_id,student_fname,student_lname,class,age) VALUES(10,'sara',	'rayan',10,16);
INSERT INTO Students_Table (student_id,student_fname,student_lname,class,age) VALUES(11,'rosy',	'kumar',10,16);

INSERT INTO Marksheet(score,years,ranking,class,student_id) VALUES (989,2014,10,1,1);
INSERT INTO Marksheet(score,years,ranking,class,student_id) VALUES (454,2014,10,10,2);
INSERT INTO Marksheet(score,years,ranking,class,student_id) VALUES (880,2014,10,4,3);
INSERT INTO Marksheet(score,years,ranking,class,student_id) VALUES (870,2014,10,5,4);
INSERT INTO Marksheet(score,years,ranking,class,student_id) VALUES (720,2014,10,7,5);
INSERT INTO Marksheet(score,years,ranking,class,student_id) VALUES (670,2014,10,8,6);
INSERT INTO Marksheet(score,years,ranking,class,student_id) VALUES (900,2014,10,3,7);
INSERT INTO Marksheet(score,years,ranking,class,student_id) VALUES (540,2014,10,9,8);
INSERT INTO Marksheet(score,years,ranking,class,student_id) VALUES (801,2014,10,6,9);
INSERT INTO Marksheet(score,years,ranking,class,student_id) VALUES (420,2014,10,11,10);
INSERT INTO Marksheet(score,years,ranking,class,student_id) VALUES (970,2014,10,2,11);
INSERT INTO Marksheet(score,years,ranking,class,student_id) VALUES (720,2014,10,12,12);
-- Write a query to display student id and student first name from the student table if the age is greater than or equal to 16 and the student's last name is Kumar.

SELECT student_id,student_fname FROM Students_Table WHERE age >= 16 AND student_lname = 'kumar'; 

-- Write a query to display all the details from the marksheet table if the score is between 800 and 1000.

SELECT * FROM Marksheet WHERE score BETWEEN 800 AND 1000;
-- Write a query to display the marksheet details from the marksheet table by adding 5 to the score and by naming the column as new score.

ALTER TABLE marksheet ADD COLUMN new_score int;
SELECT score + 5 FROM marksheet AS new_score;

-- Write a query to display the marksheet table in descending order of the  score.
SELECT * FROM Marksheet ORDER BY score desc;
-- Write a query to display details of the students whose first name starts with a.
SELECT * FROM Students_Table WHERE student_fname like "%a";