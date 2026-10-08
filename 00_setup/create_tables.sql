ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;

-- Create Departments Table
CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(50) NOT NULL
);

-- Create Employees Table
CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    salary NUMBER(10,2),
    hire_date DATE,
    department_id NUMBER REFERENCES departments(department_id)
);

-- Insert Sample Departments
INSERT INTO departments VALUES (10, 'Administration');
INSERT INTO departments VALUES (20, 'IT');
INSERT INTO departments VALUES (30, 'Finance');
INSERT INTO departments VALUES (40, 'Human Resources');

-- Insert Sample Employees
INSERT INTO employees VALUES (101, 'Abayo', 'Benie', 4500, TO_DATE('2020-03-15', 'YYYY-MM-DD'), 20);
INSERT INTO employees VALUES (102, 'Norah', 'Jones', 2800, TO_DATE('2018-07-01', 'YYYY-MM-DD'), 10);
INSERT INTO employees VALUES (103, 'Uwase', 'Louange', 6200, TO_DATE('2022-01-10', 'YYYY-MM-DD'), 30);
INSERT INTO employees VALUES (104, 'Sheja', 'Frank', 1500, TO_DATE('2024-05-20', 'YYYY-MM-DD'), 20);
INSERT INTO employees VALUES (105, 'Rwego', 'Pitie', 3500, TO_DATE('2019-11-11', 'YYYY-MM-DD'), 40);

COMMIT;