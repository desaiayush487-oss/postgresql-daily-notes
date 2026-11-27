-- ==========================================
-- Day 4: SQL Joins in PostgreSQL
-- (LEFT, RIGHT OUTER, FULL, and CROSS JOIN)
-- ==========================================

-- Setup sample tables inside demo_test schema
CREATE SCHEMA IF NOT EXISTS demo_test;

DROP TABLE IF EXISTS demo_test.students_join;
DROP TABLE IF EXISTS demo_test.departments;

CREATE TABLE demo_test.departments (
    dept_id int PRIMARY KEY,
    dept_name varchar(50) NOT NULL
);

CREATE TABLE demo_test.students_join (
    student_id int PRIMARY KEY,
    student_name varchar(50) NOT NULL,
    dept_id int
);

-- Insert sample data (including unmatched rows on both sides)
INSERT INTO demo_test.departments (dept_id, dept_name) VALUES
(101, 'Information Technology'),
(102, 'Computer Engineering'),
(103, 'Mechanical Engineering');

INSERT INTO demo_test.students_join (student_id, student_name, dept_id) VALUES
(1, 'Ayush', 101),
(2, 'Rahul', 102),
(3, 'Rani', NULL),
(4, 'Mahesh', 105);

-- 1. LEFT JOIN (LEFT OUTER JOIN)
-- Returns all students, even if they don't belong to a valid department
SELECT s.student_id, s.student_name, d.dept_name
FROM demo_test.students_join s
LEFT JOIN demo_test.departments d
    ON s.dept_id = d.dept_id;

-- 2. RIGHT OUTER JOIN (RIGHT JOIN)
-- Returns all departments, even if no student is enrolled in them (e.g., Mechanical)
SELECT s.student_id, s.student_name, d.dept_name
FROM demo_test.students_join s
RIGHT OUTER JOIN demo_test.departments d
    ON s.dept_id = d.dept_id;

-- 3. FULL JOIN (FULL OUTER JOIN)
-- Returns all students and all departments, filling NULLs where no match exists
SELECT s.student_id, s.student_name, d.dept_name
FROM demo_test.students_join s
FULL JOIN demo_test.departments d
    ON s.dept_id = d.dept_id;

-- 4. CROSS JOIN
-- Cartesian product: pairs every student with every department (4 x 3 = 12 rows)
SELECT s.student_name, d.dept_name
FROM demo_test.students_join s
CROSS JOIN demo_test.departments d;