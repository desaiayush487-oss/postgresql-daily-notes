# Day 3: DML Commands & DQL Querying in PostgreSQL

## What I Practiced

### 1. DML (Data Manipulation Language)
- **Constraints:** Enforced `NOT NULL` and `UNIQUE` on `emp_name` inside `demo_test.employee`.
- **Multi-Row `INSERT`:** Added multiple records in a single `INSERT INTO ... VALUES` statement.
- **Targeted `UPDATE` & `DELETE`:** Updated a specific row using `WHERE id = 1` and removed selected rows with `DELETE ... WHERE id IN (1, 2)`.

### 2. DQL (Data Query Language)
- **Deduplication & Filtering:** Used `SELECT DISTINCT` to remove duplicate `(firstname, lastname)` pairs and `WHERE ... IN (...)` to filter specific IDs.
- **Sorting & Slicing:** Ordered results with `ORDER BY ... ASC/DESC` and compared `LIMIT ... OFFSET` against ANSI-standard `FETCH FIRST ... ROWS ONLY`.
- **Grouping & Aggregations:** Counted students per graduation year using `COUNT(*)` + `GROUP BY grad_year`, then filtered grouped results with `HAVING`.

## Key Takeaways
- **`WHERE` vs. `HAVING`:** `WHERE` filters individual rows *before* grouping, whereas `HAVING` filters aggregated groups *after* `GROUP BY` runs.
- **Safety with DML:** Always verify the `WHERE` condition before running `UPDATE` or `DELETE` so unintended rows are not modified or removed.