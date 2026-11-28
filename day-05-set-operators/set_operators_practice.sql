-- ==========================================
-- Day 5: SQL Set Operators in PostgreSQL
-- (UNION, UNION ALL, INTERSECT, and EXCEPT)
-- ==========================================

CREATE SCHEMA IF NOT EXISTS demo_test;

DROP TABLE IF EXISTS demo_test.workshop_day1;
DROP TABLE IF EXISTS demo_test.workshop_day2;

CREATE TABLE demo_test.workshop_day1 (
    student_id int PRIMARY KEY,
    student_name varchar(50) NOT NULL
);

CREATE TABLE demo_test.workshop_day2 (
    student_id int PRIMARY KEY,
    student_name varchar(50) NOT NULL
);

-- Insert sample attendees across both days
INSERT INTO demo_test.workshop_day1 (student_id, student_name) VALUES
(1, 'Ayush'),
(2, 'Rahul'),
(3, 'Rani');

INSERT INTO demo_test.workshop_day2 (student_id, student_name) VALUES
(2, 'Rahul'),
(3, 'Rani'),
(4, 'Mahesh');

-- 1. UNION
-- Combines rows from both days and removes duplicates (returns Ayush, Rahul, Rani, Mahesh)
SELECT student_id, student_name FROM demo_test.workshop_day1
UNION
SELECT student_id, student_name FROM demo_test.workshop_day2
ORDER BY student_id;

-- 2. UNION ALL
-- Combines all rows from both days including duplicates (returns 6 rows total)
SELECT student_id, student_name FROM demo_test.workshop_day1
UNION ALL
SELECT student_id, student_name FROM demo_test.workshop_day2
ORDER BY student_id;

-- 3. INTERSECT
-- Returns only students who attended BOTH days (Rahul, Rani)
SELECT student_id, student_name FROM demo_test.workshop_day1
INTERSECT
SELECT student_id, student_name FROM demo_test.workshop_day2
ORDER BY student_id;

-- 4. EXCEPT
-- Returns students who attended Day 1 ONLY and did NOT attend Day 2 (Ayush)
SELECT student_id, student_name FROM demo_test.workshop_day1
EXCEPT
SELECT student_id, student_name FROM demo_test.workshop_day2
ORDER BY student_id;