# Day 2: DDL Commands & Table Operations

## What I Practiced
- Created schema `demo_test` and the `demo_test.employee` table with a `PRIMARY KEY`.
- Modified column definitions using `ALTER TABLE ... ALTER COLUMN ... TYPE`.
- Compared `TRUNCATE` (deletes all rows while keeping the table structure) vs. `DROP TABLE` (removes the table object completely).

## Errors & Fixes
- **Syntax error (`42601`) in `CREATE TABLE`:** Added the missing comma after `id int PRIMARY KEY`.
- **Active session error (`55006`) on `DROP DATABASE`:** Switched the active connection away from the target database (to `postgres`) before dropping.