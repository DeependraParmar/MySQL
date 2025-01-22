USE college;

-- Alter is used to make modification in the schema of the table/relation.
-- It can be used to change, add or rename the column in the table/relation.

-- For adding a new column
ALTER TABLE student ADD AGE INT NOT NULL DEFAULT 0;
SELECT * FROM student;

-- DELETING THE NEWLY ADDED COLUMN 😅😅
ALTER TABLE student DROP COLUMN AGE;
SELECT * FROM student;

-- FOR RENAMING THE TABLE
ALTER TABLE student RENAME TO std;
SELECT * FROM std;
ALTER TABLE std RENAME TO student;
SELECT * FROM student;

-- FOR CHANGING THE NAME OF THE COLUMN
ALTER TABLE student CHANGE COLUMN GRADE GRADES VARCHAR(5);
ALTER TABLE student CHANGE COLUMN GRADES GRADE VARCHAR(5); -- REVERSE 😅😅

-- FOR MODIFYING THE COLUMN CONSTRAINT
ALTER TABLE student MODIFY GRADE VARCHAR(10);
DESC student;