USE college;

SHOW TABLES;

SELECT * FROM HUMAN; -- EMPTY TABLE

-- LETS ADD A FEW ENTRIES
INSERT INTO HUMAN VALUES (100), (20), (30), (40);

SELECT * FROM HUMAN; -- RETURNS 4 ENTRIES

-- TRUNCATE THE TABLE: DELETES THE DATA OF THE TABLE
TRUNCATE TABLE HUMAN;

SELECT * FROM HUMAN; -- EMPTY TABLE