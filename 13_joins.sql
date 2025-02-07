CREATE DATABASE joins;
USE joins;

CREATE TABLE STUDENT (
	ID INT PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL
);

INSERT INTO STUDENT VALUES
	(101, "AYUSH"),
    (102, "BALRAM"),
    (103, "CHARAN"),
    (104, "DEEPAK")
;

CREATE TABLE COURSE (
	ID INT PRIMARY KEY,
    NAME VARCHAR(50)
);

INSERT INTO COURSE VALUES
	(102, "ENGLISH"),
    (105, "MATHS"),
    (103, "SCIENCE"),
    (107, "COMPUTER SCIENCE")
;

-- INNER JOIN
SELECT *
FROM STUDENT S
INNER JOIN COURSE C
ON S.ID = C.ID;

-- LEFT OUTER JOIN
SELECT S.ID, S.NAME, C.NAME
FROM STUDENT S
LEFT JOIN COURSE C
ON S.ID = C.ID; 

-- RIGHT OUTER JOIN
SELECT S.ID, S.NAME, C.NAME
FROM STUDENT S 
RIGHT JOIN COURSE C
ON S.ID = C.ID;

-- FULL JOIN
SELECT S.ID, S.NAME, C.NAME
FROM STUDENT S
LEFT JOIN COURSE C
ON S.ID = C.ID
UNION
SELECT S.ID, S.NAME, C.NAME
FROM STUDENT S 
RIGHT JOIN COURSE C
ON S.ID = C.ID;

-- LEFT EXCLUSIVE JOIN
SELECT * 
FROM STUDENT S
LEFT JOIN COURSE C
ON S.ID = C.ID
WHERE C.ID IS NULL;

-- RIGHT EXCLUSIVE JOIN
SELECT * 
FROM STUDENT S
RIGHT JOIN COURSE C
ON S.ID = C.ID
WHERE S.ID IS NULL;

-- FULL EXCLUSIVE JOIN

SELECT *
FROM STUDENT S
LEFT JOIN COURSE C
ON S.ID = C.ID
WHERE C.ID IS NULL
UNION
SELECT * FROM STUDENT S
RIGHT JOIN COURSE C
ON S.ID = C.ID
WHERE S.ID IS NULL;

-- SELF JOIN
CREATE TABLE EMP (
	ID INT PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL,
    MGR_ID INT
);

INSERT INTO EMP VALUES
	(101, "AYUSH", 103),
    (102, "BABLU", 104),
    (103, "CHARU", NULL),
    (104, "DAKSH", 103)
;

-- FINDING THE NAME OF MANAGER WITH THEIR EMPLOYEE FROM SAME TABLE USING SELF JOIN
SELECT A.NAME AS MANAGER_NAME, B.NAME AS EMPLOYEE_NAME
FROM EMP AS A
JOIN EMP AS B
ON A.ID = B.MGR_ID;











