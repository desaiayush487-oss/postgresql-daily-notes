-- Create schema and table
CREATE SCHEMA IF NOT EXISTS demo_test;

CREATE TABLE demo_test.employee (
    id int PRIMARY KEY,
    emp_name varchar(50)
);

-- Modify column data type
ALTER TABLE demo_test.employee
ALTER COLUMN emp_name TYPE varchar(100);

-- Clear rows vs remove table structure
TRUNCATE TABLE demo_test.employee;

DROP TABLE demo_test.employee;