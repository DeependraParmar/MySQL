USE college;

-- Creating a table
CREATE TABLE IF NOT EXISTS student (
	rollno INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL
);

-- Getting all the data of the table
SELECT * FROM student;