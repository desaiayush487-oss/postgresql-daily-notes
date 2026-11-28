# Day 5: SQL Set Operators in PostgreSQL

## What I Practiced
- **UNION:** Combines the result sets of two or more `SELECT` queries vertically and **removes duplicate rows**.
- **UNION ALL:** Combines all rows from the queries **including duplicates** (faster than `UNION` since PostgreSQL skips sorting/hashing for deduplication).
- **INTERSECT:** Returns only the rows that exist in **both** query result sets (use `INTERSECT ALL` to preserve duplicate counts).
- **EXCEPT:** Returns rows from the **first** query that are **not present** in the second query (use `EXCEPT ALL` to preserve duplicate counts).

## Quick Comparison

| Operator | Keeps Duplicates? | What It Returns |
| :--- | :---: | :--- |
| `UNION` | No | All unique rows from both queries |
| `UNION ALL` | Yes | All rows from both queries |
| `INTERSECT` | No (unless `ALL`) | Rows common to both queries |
| `EXCEPT` | No (unless `ALL`) | Rows in Query 1 but missing from Query 2 |

## Rules to Remember
1. Every `SELECT` query must return the **exact same number of columns**.
2. Corresponding columns must have **compatible data types** (output column names are taken from the first `SELECT`).
3. Place `ORDER BY` at the **very end** of the combined query to sort the final result.