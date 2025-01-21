USE college;

-- SWITCHING THE SAFE MODE OFF
SET SQL_SAFE_UPDATES = 0;

UPDATE student SET GRADE = "O" WHERE GRADE = "A";
UPDATE student SET MARKS = 82 WHERE ROLLNO = 105;
UPDATE student SET GRADE = "B" WHERE MARKS BETWEEN 80 AND 90;
UPDATE student SET MARKS = MARKS + 2;

UPDATE student SET MARKS = 12 WHERE ROLLNO = 105;
DELETE FROM student WHERE MARKS < 33;

DELETE FROM STUDENT; -- DELETE WHOLE DATA FROM THE TABLE

SELECT * FROM student;