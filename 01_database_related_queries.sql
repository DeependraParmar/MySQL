-- Creating a database 
CREATE DATABASE IF NOT EXISTS college;

-- Dropping the database
DROP DATABASE IF EXISTS temporary;

-- Selecting the database to use
USE college;

-- Showing the databases
SHOW DATABASES;

-- Showing the tables in the databases;
SHOW TABLES;

-- Creating a new table
CREATE TABLE student (
	id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL
);

-- Inserting data into student table
INSERT INTO student VALUES
	(1, "Deependra Parmar", 20),
    (2, "Aditya Paliwal", 19) ,
    (3, "Ashutosh Soni", 20),
    (4, "Aarav Singh Chouhan", 21);

-- Fetching all the entries of table student
SELECT * FROM student;