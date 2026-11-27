# Day 4: SQL Joins in PostgreSQL

## What I Practiced
- **LEFT JOIN (`LEFT OUTER JOIN`):** Returns all rows from the left table and matched rows from the right table. Unmatched right-side columns appear as `NULL`.
- **RIGHT OUTER JOIN (`RIGHT JOIN`):** Returns all rows from the right table and matched rows from the left table. Unmatched left-side columns appear as `NULL`.
- **FULL JOIN (`FULL OUTER JOIN`):** Combines the behavior of both `LEFT` and `RIGHT` joins—returns all records from both tables, filling `NULL` on whichever side lacks a match.
- **CROSS JOIN:** Returns the Cartesian product of both tables (every row from Table A paired with every row from Table B). Does not use an `ON` clause.

## Quick Reference Summary

| Join Type | Keeps Unmatched Left Rows? | Keeps Unmatched Right Rows? | Requires `ON` Condition? |
| :--- | :---: | :---: | :---: |
| `LEFT JOIN` | Yes | No | Yes |
| `RIGHT OUTER JOIN` | No | Yes | Yes |
| `FULL JOIN` | Yes | Yes | Yes |
| `CROSS JOIN` | All combinations | All combinations | No |

## Key Takeaway
- In PostgreSQL, `OUTER` is optional in syntax (`LEFT JOIN` = `LEFT OUTER JOIN`, `RIGHT JOIN` = `RIGHT OUTER JOIN`, `FULL JOIN` = `FULL OUTER JOIN`).
- Always be careful with `CROSS JOIN` on large tables since a 1,000-row table crossed with another 1,000-row table produces 1,000,000 rows.