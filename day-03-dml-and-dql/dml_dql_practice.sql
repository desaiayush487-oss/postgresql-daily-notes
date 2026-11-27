-- ==========================================
-- Day 3: DML & DQL Commands in PostgreSQL
-- ==========================================

CREATE SCHEMA IF NOT EXISTS demo_test;

-- ------------------------------------------
-- PART 1: DML COMMANDS (demo_test.employee)
-- ------------------------------------------
DROP TABLE IF EXISTS demo_test.employee;

CREATE TABLE demo_test.employee (
    id integer,
    emp_name varchar(50) NOT NULL UNIQUE
);

-- Insert multiple rows
INSERT INTO demo_test.employee (id, emp_name)
VALUES
    (1, 'Ayush'),
    (2, 'Ram'),
    (3, 'Shyam'),
    (4, 'Rani'),
    (5, 'Raju');

-- View table
SELECT * FROM demo_test.employee;

-- Update specific record
UPDATE demo_test.employee
SET emp_name = 'Ayush Desai'
WHERE id = 1;

-- Delete specific records using IN
DELETE FROM demo_test.employee
WHERE id IN (1, 2);

-- ------------------------------------------
-- PART 2: DQL COMMANDS & CLAUSES (demo_test.student)
-- ------------------------------------------
-- Note: Assumes demo_test.student exists with columns:
-- (student_id, firstname, lastname, house_number, phone_number, email, grad_year)

INSERT INTO demo_test.student (firstname, lastname, house_number, phone_number, email, grad_year)
VALUES
    ('Ayush', 'Desai', '403', '7283879079', 'ad@gmail.com', '2021'),
    ('Ram', 'Raj', '401', '1234567890', 'rr@mgail.com', '2022'),
    ('Rahul', 'patel', '501', '7894561230', 'def@mgail.com', '2023'),
    ('Raju', 'Pandit', '502', '1425367485', 'rp@mgail.com', '2022'),
    ('Mahesh', 'Thakur', '601', '7485967471', 'abc@mgail.com', '2023'),
    ('Mahesh', 'Thakur', '601', '4251635210', 'xyz@mgail.com', '2023');

-- Basic SELECT and DISTINCT
SELECT firstname, lastname, phone_number
FROM demo_test.student;

SELECT DISTINCT firstname, lastname
FROM demo_test.student;

-- Filtering with WHERE ... IN and sorting with ORDER BY
SELECT *
FROM demo_test.student
WHERE student_id IN (2, 5);

SELECT *
FROM demo_test.student
ORDER BY student_id DESC;

-- Pagination with LIMIT/OFFSET vs FETCH FIRST
SELECT *
FROM demo_test.student
ORDER BY student_id ASC
LIMIT 4 OFFSET 1;

SELECT *
FROM demo_test.student
FETCH FIRST 4 ROWS ONLY;

SELECT *
FROM demo_test.student
ORDER BY student_id DESC
FETCH FIRST 3 ROWS ONLY;

-- Aggregation with GROUP BY and HAVING
SELECT COUNT(*), grad_year
FROM demo_test.student
GROUP BY grad_year;

SELECT COUNT(*), grad_year
FROM demo_test.student
GROUP BY grad_year
HAVING grad_year > 2021
ORDER BY grad_year ASC;