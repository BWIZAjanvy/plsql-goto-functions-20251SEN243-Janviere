# Oracle PL/SQL GOTO Statements and Functions Report

**Course:** Database Development with PL/SQL (INSY 8311)  
**Instructor:** Eric Maniraguha  
**Student Name:** Bwiza Janviere  
**Student ID:** 20251SEN243  

---

## Submission Details
- **Repository Link:** https://github.com/BWIZAjanvy/plsql-goto-functions-20251SEN243-Janviere
- **Database Used:** Oracle Database 21c Enterprise Edition / SQL*Plus
- **Issues Encountered:** Yes (Resolved text wrapping in SQL*Plus using `COLUMN ... FORMAT` and `SET LINESIZE`)

---

## Overview
This repository contains the practical deliverables for Individual Assignment III on PL/SQL control structures (`GOTO` statements), modular stored functions, exception handling, and payroll validation. All SQL scripts and PL/SQL blocks were executed and verified in Oracle Database 21c via SQL*Plus.

---

## Tasks & Execution Summary

### Part A: PL/SQL GOTO Control Structures

* **Task A1: Number Classifier**  
  ![Task A1 Output](screenshots/A1_output.png)

* **Task A2: Salary Review**  
  ![Task A2 Output](screenshots/A2_output.png)

* **Task A3: Illegal GOTO Demonstration & Fix**  
  ![Task A3 Error and Fix](screenshots/A3_error_and_fix.png)

* **Task A4: Rewrite Without GOTO**  
  ![Task A4 Output](screenshots/A4_output.png)

---

### Part B: Stored Functions & SQL Integration

* **Task B5: Multi-Function SELECT Output**  
  ![Task B5 Multi-Function SELECT Output](screenshots/B5_select_output.png)

---

### Part C: Combined Payroll Validation Task

* **Task C1: Payroll Validation Output**  
  ![Task C1 Validation Output](screenshots/C1_output.png)

---

## Challenges & Solutions
- **Challenge:** In SQL*Plus, running multi-column queries resulted in severe line wrapping across rows because string fields (`VARCHAR2`) defaulted to wide column widths.
- **Solution:** Configured SQL*Plus output options using `SET LINESIZE 200` and formatted individual display widths using `COLUMN <column_name> FORMAT A20` before running the `SELECT` query.

---

## Integrity Statement
"Excellence is never an accident; it is the result of discipline, commitment, and integrity."  
