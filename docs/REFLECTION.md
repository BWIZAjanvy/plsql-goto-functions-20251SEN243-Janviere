# PL/SQL GOTO Statements vs Structured Functions Reflection

**Student Name:** Bwiza Janviere  
**Student ID:** 20251SEN243  
**Course:** Database Development with PL/SQL (INSY 8311)  

---

## 1. Comparing GOTO Statements vs Structured Logic
Using `GOTO` statements allows for explicit jumps in code execution, but it quickly leads to "spaghetti code" that is difficult to trace, debug, and maintain. Rewriting `GOTO` statements into structured `IF-THEN-ELSIF` blocks improves code readability, ensures predictable execution flow, and prevents illegal jump errors (such as jumping directly into an `IF` statement or loop).

## 2. Advantages of Stored Functions in PL/SQL
Creating modular stored functions provides several key benefits in database programming:
* **Code Reusability:** Calculations for annual salary, tax, and years of service can be called anywhere in PL/SQL blocks or directly inside standard SQL `SELECT` queries without duplicating logic.
* **Centralized Maintenance:** If tax percentages or business rules change, updating the logic inside the stored function automatically applies the fix everywhere across the database.
* **Error Containment:** Exception handling (`EXCEPTION WHEN OTHERS THEN ...`) inside functions prevents queries from crashing when unexpected data or NULL values are encountered.

## 3. Experience & Challenges Resolved
During the implementation:
* Overcame formatting issues in SQL*Plus where multi-column query outputs wrapped across lines by configuring `SET LINESIZE 200` and `COLUMN ... FORMAT`.
* Ensured robust exception handling across all functions so invalid inputs (such as non-existent employee IDs or negative salaries) return meaningful status messages instead of runtime database errors.