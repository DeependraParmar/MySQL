USE college;

CREATE TABLE payment (
	CUSTOMER_ID INT PRIMARY KEY,
    CUSTOMER VARCHAR(50) NOT NULL,
    MODE VARCHAR(20) NOT NULL,
    CITY VARCHAR(20) NOT NULL
);

INSERT INTO payment (customer_id, customer, mode, city) VALUES
    (101, 'Olivia Barrett', 'Netbanking', 'Portland'),
    (102, 'Ethan Sinclair', 'Credit Card', 'Miami'),
    (103, 'Maya Hernandez', 'Credit Card', 'Seattle'),
    (104, 'Liam Donovan', 'Netbanking', 'Denver'),
    (105, 'Sophia Nguyen', 'Credit Card', 'New Orleans'),
    (106, 'Caleb Foster', 'Debit Card', 'Minneapolis'),
    (107, 'Ava Patel', 'Debit Card', 'Phoenix'),
    (108, 'Lucas Carter', 'Netbanking', 'Boston'),
    (109, 'Isabella Martinez', 'Netbanking', 'Nashville'),
    (110, 'Jackson Brooks', 'Credit Card', 'Boston')
;

-- EXERCISE: FIND THE TOTAL PAYMENT ACCORDING TO EACH PAYMENT METHOD IS ASC ORDER
SELECT MODE AS "PAYMENT METHOD", count(MODE) AS "TOTAL PAYMENTS"
FROM payment
GROUP BY MODE
ORDER BY COUNT(MODE);

-- EXERCISE: CHANGE THE NAME OF COLUMN NAME TO FULL_NAME
ALTER TABLE student CHANGE COLUMN NAME FULL_NAME VARCHAR(50);

-- EXERCISE: DELETE ALL THE STUDENTS WHO SCORED LESS THAN 80
DELETE FROM STUDENT WHERE MARKS < 80;
SELECT * FROM STUDENT;

-- EXERCISE: DELETE THE COLUMN FOR GRADES
ALTER TABLE STUDENT DROP COLUMN GRADE;